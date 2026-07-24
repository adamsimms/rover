# Security Policy

## Reporting a vulnerability

Please **do not** open a public GitHub issue for security-sensitive findings.

Email **hello@adamsimms.xyz** with:

- A description of the vulnerability
- Steps to reproduce
- Impact assessment
- Any suggested fix, if you have one

You may also use GitHub private vulnerability reporting on this repository when available.

We will acknowledge receipt and work on a fix as soon as practical.

## In scope

- Accidental secrets in the repo (tokens, keys, private contacts that should stay private)
- Future onboard software, cellular/modem config, and GitHub Actions if added
- Abuse of open workflows that could harm people named in consent-sensitive contexts, or the artist

## Out of scope

- Third-party platforms, carriers, or grant portals themselves
- Physical security of a future field site
- Social engineering

## Secrets and consent

Never commit `.env`, API keys, private family or community contacts meant to stay private, funder essay/ask amounts where terms restrict discussion, or Little Bay Islands consent-sensitive material. Prefer issues that describe *process* without dumping private data. See [docs/OPERATING-MODEL.md](docs/OPERATING-MODEL.md).
