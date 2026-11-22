---
status: accepted
date: 2026-11-22
decision-makers: depuschm
---

# Reference existing codes and sources first, and back every written rule with a source

## Context and Problem Statement

We want one place for moral guidelines: the values everyone shares, the ethics of specific professions and fields, and what the major traditions teach. Much of this already exists in international instruments, professional codes of ethics, scholarly reference works and the traditions' own texts. How much should we write ourselves, and how do we keep what we write trustworthy?

This repository follows the approach of the [Architecture Guidelines](https://github.com/depuschm/architecture-guidelines), which made the same decision for software architecture.

## Decision Drivers

* Trust: readers and AI agents must be able to check every statement, which matters even more for moral claims than for technical ones.
* Legitimacy: guidance that comes from widely adopted codes and instruments carries more weight than our own opinions.
* Maintenance: a small team can't keep a large self-written handbook current.
* Usefulness: readers need a curated path, not a pile of links.

## Considered Options

* Write our own complete moral handbook
* Curate links only, like an awesome list
* Reference first: adopt existing codes and sources, and write short rules only where needed, each with a source

## Decision Outcome

Chosen option: "Reference first", because it leaves the details to the authoritative sources while still giving readers our curated choices and short, actionable rules.

### Consequences

* Good, because every rule links to a source that supports it, so statements can be checked.
* Good, because codes of ethics and instruments are maintained by the bodies that adopted them; we only track whether our links still hold.
* Bad, because our content depends on external pages that move or change. Verified dates on every source, `scripts/verify_sources.py` and the `reverify-sources` skill address that.

### Confirmation

* `scripts/check_citations.py` fails CI if any list item or table row in `general/`, `specific/` or `traditions/` lacks a link.
* Link checks (lychee) and `scripts/verify_sources.py` catch broken and retired sources.

## More Information

The rules for contributors are in [CONTRIBUTING.md](../../CONTRIBUTING.md).
