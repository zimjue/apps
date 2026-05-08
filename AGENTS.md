# AGENTS.md — jzapps.app

Diese Datei wird von Codex automatisch gelesen und beschreibt Struktur, Kontext und Regeln für die jzapps.app-Website.

## Projekt

**Website:** [jzapps.app](https://jzapps.app)
**Zweck:** Portfolio- und Landingpage für JZ Apps — Indie iOS App-Entwicklung von Jürgen Zimmer, München
**Hosting:** GitHub Pages
**Repo:** GitHub (dieses Repository)

## Entwickler

**Jürgen Zimmer** — Indie iOS-Entwickler (Nebenprojekt neben Hauptberuf als IT-Architekt bei BMW)
**Kontakt:** juzi7@icloud.com
**Support:** support@jzapps.app

## Repo-Struktur

```
/
├── index.html              ← Hauptseite (EN)
├── index-de.html           ← Hauptseite (DE)
├── support.html            ← Support-Seite
├── support-de.html
├── privacy.html            ← Datenschutz allgemein
├── datenschutz.html
├── impressum.html          ← Impressum (DE)
├── imprint.html            ← Impressum (EN)
├── services.html           ← Auftragsarbeit (EN)
├── services-de.html        ← Auftragsarbeit (DE)
├── favicon.svg             ← Favicon (JZ-Initialen)
├── favicon-32.png
├── favicon-16.png
├── apple-touch-icon.png
├── sitemap.xml
├── robots.txt
├── assets/                 ← Bilder, SVG
├── erfolgsjournal/         ← App-Landingpage
├── fitnessgoals/
├── lebensrad/
├── liquiditypulse/
├── moneymindshift/
└── myvideospace/
```

## Apps

| App | Unterseite | App Store |
|---|---|---|
| LiquidityPulse | /liquiditypulse/ | id6760768700 |
| MoneyMind | /moneymindshift/ | in Vorbereitung |
| MyVideoSpace | /myvideospace/ | — |
| Erfolgsjournal | /erfolgsjournal/ | id6760969693 |
| Lebensrad | /lebensrad/ | id6759198208 |
| FitnessGoals | /fitnessgoals/ | — |

LiquidityPulse hat zusätzlich eine eigene Website: liquiditypulse.net (separates Cloudflare Workers/Cloudflare-Projekt)

## Zweisprachigkeit

Alle Hauptseiten und App-Unterseiten existieren in EN und DE:
- EN: `index.html` / `privacy.html` / `imprint.html`
- DE: `index-de.html` / `datenschutz.html` / `impressum.html`
- Sprachumschalter per JS (`setLang()`), hreflang-Tags in allen Seiten

## Arbeitsregeln für Codex

- Immer deutsche Umlaute verwenden: ä, ö, ü, Ä, Ö, Ü, ß — niemals ae, oe, ue als Ersatz
- Zweisprachigkeit beachten: DE und EN Versionen immer parallel pflegen
- Keine externen Tracking-Scripts, Analytics oder CDN-Abhängigkeiten einbauen
- Keine Änderungen an Datenschutz- oder Impressumsseiten ohne explizite Anweisung
- Keine neuen App-Unterseiten anlegen ohne Absprache
- HTML-Struktur und CSS-Konventionen der bestehenden Seiten beibehalten
- Favicon-Links sind in allen HTML-Seiten eingebaut (relativer Pfad: `../favicon.svg` in Unterordnern)
- Sitemap und hreflang bei neuen Seiten immer aktualisieren

## Infrastruktur

- **Hosting:** GitHub Pages (Veröffentlichung über GitHub/Repository)
- **jzapps.app:** GitHub Pages, nicht Cloudflare Pages
- **Cloudflare:** nur für LiquidityPulse/liquiditypulse.net relevant
- **liquiditypulse.net:** separates Cloudflare Workers Projekt (nicht in diesem Repo)
- **iOS Apps:** lokal entwickelt, nicht in GitHub
