#!/usr/bin/env node

import fs from 'node:fs/promises';
import path from 'node:path';
import process from 'node:process';
import { fileURLToPath } from 'node:url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const repoRoot = path.resolve(__dirname, '..');
const siteRoot = 'https://jzapps.app';

const ignoredHtml = new Set([
  '404.html',
  'googleb9175df43a875a7e.html',
]);

const pairMap = new Map([
  ['about.html', 'about-de.html'],
  ['about-de.html', 'about.html'],
  ['services.html', 'services-de.html'],
  ['services-de.html', 'services.html'],
  ['support.html', 'support-de.html'],
  ['support-de.html', 'support.html'],
  ['newsletter.html', 'newsletter-de.html'],
  ['newsletter-de.html', 'newsletter.html'],
  ['privacy.html', 'datenschutz.html'],
  ['datenschutz.html', 'privacy.html'],
  ['imprint.html', 'impressum.html'],
  ['impressum.html', 'imprint.html'],
  ['index.html', 'index-de.html'],
  ['index-de.html', 'index.html'],
]);

const issues = [];

function toSiteUrl(relPath) {
  const normalized = relPath.split(path.sep).join('/');
  const segments = normalized.split('/');
  const fileName = segments[segments.length - 1];
  if (fileName === 'index.html') {
    const dir = segments.slice(0, -1).join('/');
    return `${siteRoot}/${dir ? `${dir}/` : ''}`;
  }
  if (fileName === 'index-de.html') {
    const dir = segments.slice(0, -1).join('/');
    return `${siteRoot}/${dir ? `${dir}/` : ''}index-de.html`;
  }
  return `${siteRoot}/${normalized}`;
}

function counterpartUrl(relPath) {
  const normalized = relPath.split(path.sep).join('/');
  const fileName = path.posix.basename(normalized);
  const dir = path.posix.dirname(normalized);
  const counterpartName = pairMap.get(fileName);
  if (!counterpartName) return null;
  const counterpartRel = dir === '.' ? counterpartName : `${dir}/${counterpartName}`;
  return toSiteUrl(counterpartRel);
}

function englishUrl(relPath) {
  const normalized = relPath.split(path.sep).join('/');
  const fileName = path.posix.basename(normalized);
  if (fileName.endsWith('-de.html')) {
    return counterpartUrl(relPath);
  }
  if (fileName === 'datenschutz.html') {
    return counterpartUrl(relPath);
  }
  if (fileName === 'impressum.html') {
    return counterpartUrl(relPath);
  }
  if (fileName === 'index-de.html') {
    return counterpartUrl(relPath);
  }
  if (fileName === 'newsletter-de.html' || fileName === 'services-de.html' || fileName === 'support-de.html') {
    return counterpartUrl(relPath);
  }
  return toSiteUrl(relPath);
}

function parseHtmlAudit(html) {
  const canonical = html.match(/<link\s+rel="canonical"\s+href="([^"]+)"/i)?.[1] ?? null;
  const ogUrl = html.match(/<meta\s+property="og:url"\s+content="([^"]+)"/i)?.[1] ?? null;
  const alternates = [...html.matchAll(/<link\s+rel="alternate"\s+hreflang="([^"]+)"\s+href="([^"]+)"/gi)].map(m => ({
    hreflang: m[1],
    href: m[2],
  }));
  const robots = html.match(/<meta\s+name="robots"\s+content="([^"]+)"/i)?.[1] ?? null;
  const hasOpenGraph = /<meta\s+property="og:/i.test(html);
  return { canonical, ogUrl, alternates, robots, hasOpenGraph };
}

async function readRecursive(dir, base = dir) {
  const entries = await fs.readdir(dir, { withFileTypes: true });
  const files = [];
  for (const entry of entries) {
    if (entry.name === '.git' || entry.name === 'node_modules') continue;
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) {
      if (entry.name === 'outputs') continue;
      files.push(...await readRecursive(full, base));
      continue;
    }
    if (!entry.name.endsWith('.html') && entry.name !== 'sitemap.xml') continue;
    const rel = path.relative(base, full);
    files.push({ full, rel });
  }
  return files;
}

function isSupportedHtml(rel) {
  const fileName = path.posix.basename(rel.split(path.sep).join('/'));
  if (ignoredHtml.has(fileName)) return false;
  if (rel.includes(`${path.sep}outputs${path.sep}`)) return false;
  return fileName.endsWith('.html');
}

async function main() {
  const files = await readRecursive(repoRoot);
  const htmlFiles = files.filter(f => isSupportedHtml(f.rel) && f.rel !== 'sitemap.xml');
  const sitemapPath = path.join(repoRoot, 'sitemap.xml');
  const sitemap = await fs.readFile(sitemapPath, 'utf8');

  const sitemapEntries = [...sitemap.matchAll(/<loc>([^<]+)<\/loc>\s*<lastmod>([^<]+)<\/lastmod>/g)].map(m => ({
    loc: m[1],
    lastmod: m[2],
  }));
  const sitemapLocs = new Set(sitemapEntries.map(e => e.loc));

  for (const file of htmlFiles) {
    const rel = file.rel.split(path.sep).join('/');
    const html = await fs.readFile(file.full, 'utf8');
    const { canonical, ogUrl, alternates, robots, hasOpenGraph } = parseHtmlAudit(html);

    if (!canonical) {
      issues.push(`MISSING canonical: ${rel}`);
    }
    if (hasOpenGraph) {
      if (!ogUrl) {
        issues.push(`MISSING og:url: ${rel}`);
      }
      if (canonical && ogUrl && canonical !== ogUrl) {
        issues.push(`MISMATCH canonical/og:url: ${rel} -> ${canonical} != ${ogUrl}`);
      }
    }

    const alternateMap = new Map(alternates.map(a => [a.hreflang, a.href]));
    const expectedEn = englishUrl(rel);
    const expectedDe = counterpartUrl(rel);
    const expectedXDefault = englishUrl(rel);

    if (!alternateMap.has('x-default')) {
      issues.push(`MISSING x-default: ${rel}`);
    }

    if (expectedEn && !alternateMap.has('en')) {
      issues.push(`MISSING en alternate: ${rel}`);
    }
    if (expectedDe && !alternateMap.has('de')) {
      issues.push(`MISSING de alternate: ${rel}`);
    }
    if (expectedXDefault && alternateMap.get('x-default') !== expectedXDefault) {
      issues.push(`MISMATCH x-default: ${rel} -> ${alternateMap.get('x-default')} != ${expectedXDefault}`);
    }

    const canonicalUrl = canonical ?? toSiteUrl(rel);
    if (!sitemapLocs.has(canonicalUrl)) {
      issues.push(`SITEMAP missing canonical: ${rel} -> ${canonicalUrl}`);
    }

    if (robots && robots.includes('noindex')) {
      // Keep noindex pages out of the sitemap audit; they are handled separately.
      continue;
    }
  }

  for (const entry of sitemapEntries) {
    const loc = entry.loc;
    if (!loc.startsWith(siteRoot)) {
      continue;
    }
    const relUrl = loc.slice(siteRoot.length).replace(/^\//, '');
    const fileCandidate = relUrl === '' ? 'index.html' : relUrl.endsWith('/') ? `${relUrl}index.html` : relUrl;
    const filePath = path.join(repoRoot, fileCandidate);
    if (!(await fileExists(filePath))) {
      issues.push(`SITEMAP broken loc: ${loc}`);
    }
  }

  const counts = {
    htmlFiles: htmlFiles.length,
    sitemapEntries: sitemapEntries.length,
    issues: issues.length,
  };

  if (issues.length === 0) {
    console.log(`OK: ${counts.htmlFiles} HTML files, ${counts.sitemapEntries} sitemap entries`);
    return;
  }

  console.log(`Found ${issues.length} issue(s):`);
  for (const issue of issues) {
    console.log(`- ${issue}`);
  }
  process.exitCode = 1;
}

async function fileExists(filePath) {
  try {
    await fs.access(filePath);
    return true;
  } catch {
    return false;
  }
}

await main();
