---
title: "Projektdokumentation"
subtitle: "Version {{VERSION}}"
author: "Mein Team"
date: "Stand: {{VERSION}}"
titlepage: true
titlepage-color: "1a237e"
titlepage-text-color: "ffffff"
titlepage-rule-color: "ffffff"
toc: true
toc-depth: 3
lang: de
---

# Einleitung

Willkommen zur **Projektdokumentation** in Version **{{VERSION}}**.

Dieses Dokument wird automatisch aus Markdown erzeugt und als PDF bereitgestellt.

## Überblick

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dieses Kapitel gibt
einen Überblick über die wichtigsten Funktionen der aktuellen Version.

### Neue Features

- Feature A: Beschreibung von Feature A
- Feature B: Beschreibung von Feature B
- Feature C: Beschreibung von Feature C

## Architektur

| Komponente   | Technologie | Beschreibung                    |
|--------------|-------------|---------------------------------|
| Frontend     | React       | Single-Page-Application         |
| Backend      | Node.js     | REST-API mit Express            |
| Datenbank    | PostgreSQL  | Relationale Datenbank           |

## Konfiguration

Die Anwendung wird über Umgebungsvariablen konfiguriert:

```bash
export DATABASE_URL="postgres://user:pass@localhost:5432/mydb"
export PORT=3000
export LOG_LEVEL=info
```

## Changelog

### {{VERSION}}

- Initiales Release der Dokumentation
- Automatische PDF-Erzeugung eingerichtet

---

> **Hinweis:** Dieses Dokument wurde automatisch generiert.
> Version: **{{VERSION}}**
