---
status: accepted
date: 2026-11-22
decision-makers: depuschm
---

# License guideline content under CC BY 4.0 and code under MIT

## Context and Problem Statement

The repository contains documentation (guidelines, tradition pages, decision records) and code (scripts, skills, CI and plugin config). Without a license, nobody may legally reuse any of it. Which license fits?

## Considered Options

* MIT for everything
* CC BY 4.0 for everything
* CC BY 4.0 for content, MIT for code

## Decision Outcome

Chosen option: "CC BY 4.0 for content, MIT for code", the same split as the Architecture Guidelines. [CC BY 4.0](../../LICENSE) suits prose and requires attribution. [MIT](../../LICENSE-CODE) is the usual permissive license for code and doesn't impose documentation-style attribution on scripts.

### Consequences

* Good, because each kind of content gets a license designed for it.
* Bad, because contributors need to know which license applies where; the README and CONTRIBUTING.md spell it out.
* Neutral, because short quotations from sources, such as a verse quoted on a tradition page, stay under their own licenses.
