<div align="center">

```
 █████╗ ██╗    ██████╗ ██╗   ██╗ ██████╗ 
██╔══██╗██║    ██╔══██╗██║   ██║██╔════╝ 
███████║██║    ██████╔╝██║   ██║██║  ███╗
██╔══██║██║    ██╔══██╗██║   ██║██║   ██║
██║  ██║██║    ██████╔╝╚██████╔╝╚██████╔╝
╚═╝  ╚═╝╚═╝    ╚═════╝  ╚═════╝  ╚═════╝ 
                                         
██████╗  ██████╗ ██╗   ██╗███╗   ██╗████████╗██╗   ██╗
██╔══██╗██╔═══██╗██║   ██║████╗  ██║╚══██╔══╝╚██╗ ██╔╝
██████╔╝██║   ██║██║   ██║██╔██╗ ██║   ██║    ╚████╔╝ 
██╔══██╗██║   ██║██║   ██║██║╚██╗██║   ██║     ╚██╔╝  
██████╔╝╚██████╔╝╚██████╔╝██║ ╚████║   ██║      ██║   
╚═════╝  ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝   ╚═╝      ╚═╝
███████╗██╗   ██╗███████╗████████╗███████╗███╗   ███╗
██╔════╝╚██╗ ██╔╝██╔════╝╚══██╔══╝██╔════╝████╗ ████║
███████╗ ╚████╔╝ ███████╗   ██║   █████╗  ██╔████╔██║
╚════██║  ╚██╔╝  ╚════██║   ██║   ██╔══╝  ██║╚██╔╝██║
███████║   ██║   ███████║   ██║   ███████╗██║ ╚═╝ ██║
╚══════╝   ╚═╝   ╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚═╝
```

# 🎯 AI BUG BOUNTY SYSTEM

**7 AI AGENTS · 111 SKILLS · FULL METHODOLOGY · ONE-COMMAND SETUP**

👤 **Author:** `sricharan996`

<br>

<a href="#-quickstart"><img src="https://img.shields.io/badge/SETUP-ONE%20COMMAND-00FF41?style=for-the-badge"></a>
<a href="#-the-agent-pipeline"><img src="https://img.shields.io/badge/AGENTS-7-FF003C?style=for-the-badge"></a>
<a href="#skills"><img src="https://img.shields.io/badge/SKILL%20MODULES-111-9D00FF?style=for-the-badge"></a>
<a href="#-methodology-library"><img src="https://img.shields.io/badge/METHODOLOGY%20DOCS-26-00E5FF?style=for-the-badge"></a>
<a href="#scripts"><img src="https://img.shields.io/badge/AUTOMATION-16%20SCRIPTS-FF6D00?style=for-the-badge"></a>
<a href="#-safety-model"><img src="https://img.shields.io/badge/CI%20GUARDRAILS-ACTIVE-00FF41?style=for-the-badge&logo=githubactions&logoColor=white"></a>
<a href="LICENSE"><img src="https://img.shields.io/badge/LICENSE-MIT-FFD500?style=for-the-badge"></a>

<br>

```
┌────────────────────────────────────────────────────────────────────────────┐
│  An AI-agent-driven bug bounty framework built on opencode. Seven          │
│  specialized agents run a full pipeline — passive recon to submission-     │
│  ready reports. Sanitized, credential-free, CI-guarded.                    │
│                                                                            │
│  ⚠️  AUTHORIZED TESTING ONLY — see DISCLAIMER.md                           │
└────────────────────────────────────────────────────────────────────────────┘
```

</div>

---

## 🧭 Navigation

| # | Section | # | Section |
|---|---------|---|---------|
| 01 | [Stats](#-stats) | 06 | [Methodology Library](#-methodology-library) |
| 02 | [The Agent Pipeline](#-the-agent-pipeline) | 07 | [Quickstart](#-quickstart) |
| 03 | [Skill Modules](#skills) | 08 | [Safety Model](#-safety-model) |
| 04 | [Automation Scripts](#scripts) | 09 | [Repository Layout](#-repository-layout) |
| 05 | [Strategy Docs](#-strategy-docs) | 10 | [Credits & License](#-credits--license) |

---

## 📊 Stats

| Metric | Count |
|--------|:-----:|
| 🗂️ Tracked files | **246+** |
| 🤖 AI agents | **7** |
| 🧩 Skill modules | **111** |
| 📖 Methodology playbooks | **26** |
| ⚙️ Automation scripts | **16** |
| 🗺️ Strategy documents | **8** |

---

## 🤖 The Agent Pipeline

```
                 ┌─────────────────────────────────────────────┐
                 │                opencode CLI                  │
                 └─────────────────────────────────────────────┘
   /hunt ──► HUNTER ──┐                    Core pipeline:
                      │                    CHAOS → HTTPX → NAABU
   /verify ─► VERIFIER├── shared memory    → NMAP → NUCLEI → FFUF
                      │   (~/.config/opencode/
   /report ─► REPORTER┘     agent_memory/)
                                 ▲        │
                       DEBUG ────┘        └── PLAN / AUDITOR / RECON
```

| Agent | Role | Superpower |
|-------|------|-----------|
| 🔴 **HUNTER** | Full recon + exploitation | WAF bypass arsenal, continuous probing cycles, finding hashing |
| 🟠 **VERIFIER** | Zero-false-positive gate | 3-request reproducibility, response diffing, CVSS calibration |
| 🔵 **REPORTER** | Submission-ready reports | Triager psychology, ≤120-char titles, working curl PoCs |
| 🟢 **PLAN** | Strategic attack planning | Internet research → P0–P3 prioritized vectors |
| 🟣 **DEBUG** | Self-improvement engine | Cross-agent memory propagation, mistake prevention rules |
| 🟡 **AUDITOR** | Source-level code audit | 6-phase methodology, trust-boundary mapping, evidence standards |
| 🩳 **RECON** | Fast attack-surface mapper | Passive-first, CDN tagging, structured handoff contract |

Every agent ships with mission context, decision frameworks and output contracts — not just command dumps.

<a id="skills"></a>
## 🧩 Skill Modules — 111

Machine-indexed in [`skills/index.json`](skills/index.json) so agents route programmatically:

| Category | Count | Highlights |
|----------|:-----:|------------|
| 🌐 Web exploitation | **38** | XSS, SQLi, SSRF, SSTI (+ error-based), request smuggling (+ modern desync), GraphQL, prototype pollution, ORM filter injection |
| 🖥️ Platform attacks | **16** | Linux/Windows/macOS privesc, Active Directory (kerberos, ACL abuse, AD CS), k8s, containers |
| ⚙️ Binary exploitation | **11** | Heap, ROP, format string, kernel, V8, sandbox escapes |
| 🔍 Recon | **9** | Subdomain takeover, DNS rebinding, source-control leaks, JS analysis |
| 🔐 Crypto | **6** | RSA, lattice, symmetric, hash attacks |
| 📱 Mobile | **3** | Android, iOS, SSL pinning bypass |
| 🤖 AI security | **2** | LLM prompt injection, AI/ML supply chain |

**2025–2026 state of the art included:** Next.js middleware bypass (CVE-2025-29927) · XS-Leaks (ETag length oracle) · CSS exfiltration · web timing attacks · 0.CL desync · error-based blind SSTI.

<a id="scripts"></a>
## ⚙️ Automation Scripts

| Script | Purpose |
|--------|---------|
| `urlfuzzer.sh` | gau → uro → httpx → nuclei passive fuzzing pipeline |
| `naabutonmap.py` | Naabu results → deep Nmap vuln scanning |
| `coordinate.py` + `coordination_server.py` | Multi-agent orchestration |
| `verify_agent.sh` / `report_agent.sh` | Standalone verification & report generation |
| `nextjs_chunk_extractor.sh` | Route/action extraction from Next.js builds |
| `virustotal.sh` / `urlscan.py` / `alienvault.sh` / `wayback.sh` | OSINT collectors (env-var API keys) |
| `dorking.py` / `punycode_gen.py` / `sast_fuzzer.py` | Dork automation, IDN homoglyphs, SAST fuzzing |

## 🗺️ Strategy Docs

Strategic attack planning · Recon execution methodology · OSINT targets reference · Tor anonymity setup · Real-world recon case study — all in [`docs/`](docs/).

## 🚀 Quickstart

```bash
git clone https://github.com/sricharan996/bugbounty-ai-system.git
cd bugbounty-ai-system && bash setup.sh     # asks handle + email, installs everything

export OPENROUTER_API_KEY=sk-or-...         # any OpenAI-compatible provider
bash install-tools.sh                        # optional: recon toolchain

opencode
> /hunt example.com                          # ONLY on authorized targets!
> /verify <finding-file>
> /report <verified-finding>
```

## 🛡️ Safety Model

- **CI guardrails on every push**: secret-pattern scanning, shell/python syntax checks, agent validation — nobody can leak secrets into this repo, including future-you
- **Verifier agent kills false positives** before they reach a triage queue
- **`.gitignore` blocks recon output** and secret-shaped files by design
- Findings stay local under `~/recon_reports/` — never committed

## 📁 Repository Layout

<details>
<summary><b>Full structure</b></summary>

```
├── agents/            7 agent definitions (context-rich prompts + protocols)
├── skills/            111 security skill modules + index.json
├── common/            26 methodology playbooks
├── docs/              strategy library (planning, Tor, case study...)
├── templates/         BugBase report template
├── scripts/           16 automation tools
├── .github/workflows/ CI security guardrails
├── setup.sh           one-command installer
└── install-tools.sh   recon toolchain installer
```

</details>

## 🔗 Related

- [bug-bounty-research](https://github.com/sricharan996/bug-bounty-research) — companion research workspace mirror

## 📜 Credits & License

- Built on [opencode](https://opencode.ai)
- Tooling by ProjectDiscovery (subfinder, httpx, naabu, nuclei), ffuf, dalfox
- Licensed [MIT](LICENSE) — but you own everything you do with it. **Hack ethically.**

---

<div align="center">

**⭐ Star this repo if it helps you find your next critical!**

</div>
