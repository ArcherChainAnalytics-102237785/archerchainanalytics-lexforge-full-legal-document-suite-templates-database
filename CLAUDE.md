# ARCHER CHAIN ANALYTICS — PROJECT INTELLIGENCE PROFILE
# CLAUDE.md — Master AI Harness Configuration
# Entity: Archer Chain Analytics | ISC: 102237785 | CRA BN: 709110639
# Owner: Neil Scott Archer | mahihkan.com
# Classification: PRIVATE AND PROPRIETARY — All Rights Reserved
# Version: 1.0 | Date: June 14, 2026

---

## ⚡ QUICK COMMANDS

| Task | Command | Notes |
| :--- | :--- | :--- |
| **Install** | `npm install` or `pip install -r requirements.txt` | Per product stack |
| **Dev Server** | `npm run dev` or `python server.py` | Per product |
| **Build Check** | `npm run build` | Verify zero compile errors before any push |
| **Lint** | `npm run lint` / `ruff check .` | Run before every commit |
| **Test** | `npm run test` / `pytest` | Must pass before pushing to main |
| **Tauri Build** | `npm run tauri build` | FabriCatHD™, Archer Revenue Finder™ |
| **Type Check** | `npx tsc --noEmit` | TypeScript products |

---

## 🏢 ENTITY & IDENTITY — NEVER ALTER

```
Owner:          Neil Scott Archer
Business:       Archer Chain Analytics (Sole Proprietor — NOT Inc.)
ISC:            102237785 (Saskatchewan Corporate Registry — June 05, 2026)
CRA BN:         709110639
SK Account:     709110639SK0001
GST/HST:        754975035 RT0001
Address:        417 Avenue G S, 5th Ave N, Saskatoon, SK S7M 1V5
Email:          archerchainanalytics@gmail.com
Website:        mahihkan.com
GitHub (Personal): ArcherChainAnalytics-102237785
GitHub (Org):   ArcherChainAnalytics-Mahihkan
```

---

## 📦 PRODUCT REGISTRY — 14 CONFIRMED PRODUCTS

| Code | Product | Stack | Status |
| :--- | :--- | :--- | :--- |
| ARC-ACB-001 | AcerbE™ | Python, SQLite, Tauri, HTML | Production-Ready |
| ARC-RPX-001 | RaPaX™ | Node.js, SQLite, React Native, Discord.js | Production-Ready |
| ARC-INX-001 | INxS™ | Python 3.10+, asyncio, Pydantic v2, Docker | Architecture Complete |
| ARC-SBX-001 | SalvageBotX™ | Python, Node.js | Integration Stage |
| ARC-ATH-001 | Alētheia Array™ | Node.js, TypeScript, AUBS schema | 558 Engines Production |
| ARC-ARG-001 | Argos²™ | Python, Node.js, ephemeral chain forking | Architecture Complete |
| ARC-CHA-001 | Crypto Hall of Alexandria™ | TBD | Concept Stage |
| ARC-COS-001 | CreatorOS™ | Next.js, PostgreSQL, Stripe | Blueprint Complete |
| ARC-FHD-001 | FabriCatHD™ | Tauri 2.0, React 18, Rust, Anthropic API | Production-Ready |
| ARC-ARF-001 | Archer Revenue Finder™ | Tauri 2.0, React, Rust, Playwright | Architecture Complete |
| ARC-FDP-001 | FormDepot™ | Electron/Tauri, React, Python OCR | Production-Ready |
| ARC-YTB-001 | YourTube™ | HTML/JS, Claude API (claude-sonnet-4-6) | Production-Ready |
| ARC-SND-001 | SoundDrop™ | React Native, audio processing libs | Build-Ready |
| ARC-LXF-001 | LexForge™ | Node.js, webhook pipeline, AcerbE™ integration | Production-Ready |

---

## 🛠️ TECHNOLOGY STACK BY LAYER

### Desktop Applications (Tauri)
- **Framework:** Tauri 2.0
- **Frontend:** React 18, TypeScript, TailwindCSS
- **Backend:** Rust core
- **Products:** FabriCatHD™, Archer Revenue Finder™, FormDepot™
- **Build:** `npm run tauri build`
- **Installer:** Inno Setup (.iss) for Windows

### Blockchain Listener Engines (Alētheia Array™)
- **Runtime:** Node.js 18+
- **Language:** TypeScript
- **Schema:** Aletheia Universal Block Schema (AUBS)
- **Config:** `config/networkRegistry.json` per engine
- **Entry:** `index.tsx` per engine package
- **Watermark:** AcerbE™ fingerprint embedded in every package
- **Count:** 558 mainnet engines (25 testnets excluded)

### Automation / Bot Systems (INxS™, SalvageBotX™, Argos²™)
- **Language:** Python 3.10+
- **Async:** asyncio throughout — never use synchronous blocking calls
- **Validation:** Pydantic v2 for all config models
- **Logging:** structlog — structured JSON only — zero print() in production
- **Packaging:** pyproject.toml + src layout
- **Containerization:** Docker + docker-compose
- **License validation:** HMAC-based local validation — no network calls for licensing

### Web / SaaS (CreatorOS™, YourTube™)
- **Framework:** Next.js 15 (App Router)
- **Styling:** TailwindCSS
- **Database:** PostgreSQL + Prisma ORM
- **Payments:** Stripe webhooks
- **Hosting:** Vercel
- **AI:** Anthropic claude-sonnet-4-6 only

### Point of Sale (RaPaX™)
- **Runtime:** Node.js
- **Database:** SQLite (append-only audit log)
- **Crypto:** unique payment addresses per transaction, 60-second cron poller
- **Discord:** discord.js integration
- **Mobile:** React Native
- **AcerbE™:** triggered post-payment for forensic stamping

### Legal Document Factory (LexForge™)
- **Trigger:** Webhook from RaPaX™ at point of sale
- **Languages:** 19 (EN, FR-CA, FR-FR, DE, ES, PT-BR, IT, JA, ZH, KO, AR-MSA, AR-Gulf, RU, PT-PT, NL, TR, PL + 2 queued)
- **Documents:** 19 per product per language
- **Delivery:** Secure download link within 30 seconds of payment
- **Fingerprint:** AcerbE™ stamps every document package — mandatory, no exceptions

### Forensic Watermarking (AcerbE™)
- **Language:** Python
- **Core:** `acerbe_engine.py`, `acerbe_cli.py`, `acerbe_integration.py`
- **Server:** `server.py` — runs at 127.0.0.1:7749
- **Layers:** 4-layer (steganography + AES-256 + HMAC + SQLite)
- **UI:** 3 HTML dashboards
- **Integration:** middleware connector for RaPaX™

---

## 🎯 LAUNCH PRIORITIES & CRITICAL FLOWS

### 1. The Payment Pipeline (RaPaX™ → LexForge™ → AcerbE™ → Delivery)
This is the most critical flow in the entire ACA ecosystem. It must be perfectly robust.

```
Customer pays via RaPaX™
    ↓ Unique payment address per transaction
    ↓ 60-second cron poller confirms payment
    ↓ Signal fires to LexForge™ (product, chain, node ID, jurisdiction, tx ID)
    ↓ LexForge™ generates 19 documents × 19 languages
    ↓ AcerbE™ fingerprints every document — HARD GATE — nothing ships without it
    ↓ Secure tokenized download link generated
    ↓ Delivered via Discord / Telegram / Web / Mobile within 30 seconds
    ↓ Sale permanently recorded in Hall of Records / Mahihkan
```

**Every step must have:**
- Try/catch with explicit error logging
- Retry logic with exponential backoff
- Audit log entry in SQLite
- Rollback on failure

### 2. Security Standards — NON-NEGOTIABLE
- Zero console.log() in production — use structlog (Python) or winston/pino (Node)
- All API keys, secrets, and credentials in `.env` — never committed
- `.env` in `.gitignore` — verify before every push
- HMAC-based license validation — local only, zero network calls
- AcerbE™ fingerprint on all shipped packages — no exceptions

### 3. Performance Constraints
- Core Web Vitals: LCP < 2.5s, FID < 100ms, CLS < 0.1
- Alētheia listener engines: sub-100ms event ingestion target
- Argos²™ ephemeral chain fork: < 200ms mandatory
- LexForge™ document package delivery: < 30 seconds from payment confirmation

---

## 📐 UNIFIED CODING STANDARDS

### Universal
- **Immutability:** Prefer immutable data structures throughout
- **Type safety:** Explicit type definitions — no `any` in TypeScript, no untyped Python
- **Separation of concerns:** Business logic, data access, and presentation strictly separated
- **Error handling:** Every API call, DB query, and external hook wrapped in try/catch
- **No secrets in code:** All credentials via environment variables only

### TypeScript / JavaScript
```typescript
// Imports: Use absolute aliases — never relative paths beyond one level
import { something } from '@/lib/utils'  // ✓
import { something } from '../../../lib/utils'  // ✗

// Error handling pattern
try {
  const result = await riskyOperation()
  return { success: true, data: result }
} catch (error) {
  logger.error({ error, context: 'operation_name' })
  return { success: false, error: 'User-friendly message' }
}
```

### Python
```python
# Use structlog — never print() in production
import structlog
log = structlog.get_logger()

# Error handling pattern
try:
    result = risky_operation()
    log.info("operation_success", result=result)
    return result
except Exception as e:
    log.error("operation_failed", error=str(e), exc_info=True)
    raise
```

### Rust (Tauri backends)
- Prefer `Result<T, E>` everywhere — no `.unwrap()` in production code
- Use `thiserror` for custom error types
- All file I/O async

---

## 🔐 BRAND STANDARDS — LOCKED — NEVER ALTER

```
Primary Palette:
  Black:    #0A0A0A (backgrounds)
  Gold:     #C9A84C (headings, borders, accents)
  White:    #FFFFFF (primary text)

Exception:
  INxS™:   Hot magenta / neon pink on deep purple-black ONLY

Typography:
  Headings: DM Serif Display — NEVER change this font
  Body:     Inter
  Data/Code: IBM Plex Mono

Logo:       Archer Chain Analytics circular medallion
Mascot:     Snipey McSniperson™ (INxS™ / trading bot content only)
Tagline:    Sovereignty // Integrity // Inexorabilis

PROHIBITED:
  - Pastel colors
  - Pink (except INxS™)
  - Rounded cartoon icons
  - "Inc." anywhere (not incorporated)
  - Any numbers in "Alētheia Array™" product name
```

---

## 🤖 AI HARNESS INSTRUCTIONS

### Context Preservation
- Read this file before implementing any feature or running any diagnostic
- Do not read full file histories blindly — target changes with surgical precision
- Keep commits atomic — one logical change per commit

### Verification Loop — MANDATORY
After every feature implementation or bug fix:
1. Run `npm run build` or `python -m pytest` — must pass with zero errors
2. Run `npm run lint` — must pass with zero warnings
3. Run type check — must pass clean
4. Only then commit

### Commit Message Format
```
[PRODUCT-CODE] action: brief description — ACA ISC 102237785

Examples:
[ARC-RPX-001] fix: correct payment polling interval — ACA ISC 102237785
[ARC-ATH-001] feat: add Solana listener v2.1 — ACA ISC 102237785
[ARC-LXF-001] docs: add FR-CA legal template — ACA ISC 102237785
```

### Repository Ownership Block — Required in Every README
```markdown
© 2026 Neil Scott Archer / Archer Chain Analytics
ISC Registration: 102237785 | CRA BN: 709110639
Address: 417 Avenue G S, 5th Ave N, Saskatoon, SK S7M 1V5
Contact: archerchainanalytics@gmail.com | mahihkan.com
All rights reserved. Private and proprietary.
Trademark applications pending with CIPO.
```

### Subagent Delegation
- Architecture decisions → `planner` subagent
- Build errors → `build-error-resolver` subagent
- Security review → always flag for human review before merging

---

## ⚠️ CRITICAL CONSTRAINTS — NEVER VIOLATE

1. **Never use "Inc." or "Incorporated"** — Archer Chain Analytics is a sole proprietorship
2. **Never alter product names** — exact trademark names required at all times
3. **Never add numbers to "Alētheia Array™"** — no x101, x116, x333, x558, x583
4. **Never commit `.env` files** — verify `.gitignore` before every push
5. **Never use `console.log` in production** — structured logging only
6. **AcerbE™ fingerprint is a hard gate** — packages cannot ship without it
7. **LexForge™ is the legal document pipeline** — do not bypass or shortcut
8. **558 is the canonical engine count** — 25 testnets are excluded from commercial suite
9. **19 documents × 19 languages** is the LexForge™ standard per product sale
10. **USD pricing only** — never change prices without explicit written instruction from Neil Scott Archer

---

## 📋 PRE-PUSH CHECKLIST

Before pushing any code to GitHub:

- [ ] Build passes with zero errors
- [ ] Lint passes with zero warnings
- [ ] Type check passes clean
- [ ] Tests pass
- [ ] No `.env` or secrets committed
- [ ] No `console.log` / `print()` in production paths
- [ ] Ownership block present in README
- [ ] Commit message follows format above
- [ ] AcerbE™ integration intact (if applicable)
- [ ] No product names altered
- [ ] No "Inc." anywhere in new code or docs

---

*Archer Chain Analytics — Sovereignty // Integrity // Inexorabilis*
*© 2026 Neil Scott Archer | ISC: 102237785 | mahihkan.com*
