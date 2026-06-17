# AGENTS.md — jzapps.app

Diese Datei wird von Codex automatisch gelesen und beschreibt Struktur, Kontext und Regeln für die jzapps.app-Website.

## Projekt

**Website:** [jzapps.app](https://jzapps.app)
**Zweck:** Portfolio- und Landingpage für JZ Apps — Indie iOS App-Entwicklung von Jürgen Zimmer, München
**Hosting:** GitHub Pages (automatische Veröffentlichung bei `git push origin main`)
**Repo:** `git@github-zimjue:zimjue/apps.git` (Push-Alias: `github-zimjue`)

## Entwickler

**Jürgen Zimmer** — Indie iOS-Entwickler (Nebenprojekt neben Hauptberuf als IT-Architekt bei BMW)
**Kontakt & Support:** support@jzapps.app

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
├── fitcoach/
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
| FitCoach | /fitcoach/ | Pre-Release |

LiquidityPulse hat zusätzlich eine eigene Website: liquiditypulse.net — gehostet und betrieben über **Cloudflare Workers** (separates Projekt, nicht in diesem Repo)

### LiquidityPulse – URL-Übersicht

| Zweck | URL | Hinweis |
|---|---|---|
| Landingpage (DE) | `jzapps.app/liquiditypulse/index-de.html` | GitHub Pages |
| Landingpage (EN) | `jzapps.app/liquiditypulse/index.html` | GitHub Pages |
| Datenschutz (DE) | `jzapps.app/liquiditypulse/datenschutz.html` | App Store + App verwenden diese URL |
| Datenschutz (EN) | `jzapps.app/liquiditypulse/privacy.html` | App Store + App verwenden diese URL |
| Live-Dashboard | `liquiditypulse.net` | Cloudflare Workers/Pages |
| API (Datenproxy) | `liquiditypulse.net/v1/*` | Cloudflare Worker, KV-Cache |
| iOS-App-Seite | `liquiditypulse.net/ios/` | Cloudflare Pages |
| Datenschutz iOS (DE) | `liquiditypulse.net/ios/datenschutz.html` | nur auf liquiditypulse.net |
| Datenschutz iOS (EN) | `liquiditypulse.net/ios/privacy.html` | nur auf liquiditypulse.net |

**Maßgebliche Datenschutz-URLs für App Store und App:**
- App Store Beschreibung DE: `https://jzapps.app/liquiditypulse/datenschutz.html`
- App Store Beschreibung EN: `https://jzapps.app/liquiditypulse/privacy.html`
- Paywall (App, DE): `https://jzapps.app/liquiditypulse/datenschutz.html`
- Paywall (App, EN): `https://jzapps.app/liquiditypulse/privacy.html`

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

- **Hosting:** GitHub Pages — Veröffentlichung automatisch bei `git push origin main`
- **Remote:** `git@github-zimjue:zimjue/apps.git` (SSH-Alias `github-zimjue` in `~/.ssh/config`)
- **Domain `jzapps.app`:** registriert bei **IONOS**, DNS bei **IONOS** (Nameserver: ui-dns.org/de/biz/com) — kein Cloudflare
- **Cloudflare (Workers/Hosting):** `liquiditypulse.net` läuft vollständig über Cloudflare Workers — separates Projekt, nicht in diesem Repo
- **iOS Apps:** lokal entwickelt, nicht in GitHub

## Screenshots aktualisieren

Screenshots für App-Unterseiten (z.B. `/liquiditypulse/assets/`) werden über Fastlane erzeugt
und manuell in dieses Repo kopiert:

1. Screenshots aufnehmen: `bundle exec fastlane appstore_assets` im App-Projekt
2. **Englische Seite** (`index.html`): Bilder aus `fastlane/screenshots/en-US/` kopieren → `screenshot1.png` … `screenshot5.png`
3. **Deutsche Seite** (`index-de.html`): Bilder aus `fastlane/screenshots/de-DE/` kopieren → `screenshot1-de.png` … `screenshot5-de.png`
4. Alle Bilder auf 660px Breite skalieren: `sips --resampleWidth 660 screenshot.png`
5. HTML-Slides in `index.html` und `index-de.html` bei Bedarf anpassen (Captions, Reihenfolge)
6. `git add`, `git commit`, `git push` → GitHub Pages veröffentlicht automatisch

### Screenshot-Dateikonvention (LiquidityPulse)

| Datei | Sprache | Inhalt |
|---|---|---|
| `screenshot1.png` | EN | Dashboard |
| `screenshot2.png` | EN | Regime |
| `screenshot3.png` | EN | Sektor-Rotation |
| `screenshot4.png` | EN | Charts |
| `screenshot5.png` | EN | Lead/Lag |
| `screenshot1-de.png` | DE | Dashboard |
| `screenshot2-de.png` | DE | Regime |
| `screenshot3-de.png` | DE | Sektor-Rotation |
| `screenshot4-de.png` | DE | Charts |
| `screenshot5-de.png` | DE | Lead/Lag |

Die Reihenfolge entspricht der Tab-Reihenfolge in der App.
Auflösung: 660×1434 px (iPhone 17 Pro Max, Dark Mode, iOS 26.2).

**Cache-Hinweis:** Nach dem Push Bilder im Browser mit Cmd+Shift+R neu laden.
GitHub Pages hat einen eigenen CDN-Cache — Cloudflare ist für jzapps.app nicht im Einsatz (weder DNS noch Pages/Workers).
