---
status: accepted
date: 2026-11-22
decision-makers: depuschm
---

# Describe religious and philosophical traditions on their own terms, without ranking them

## Context and Problem Statement

Many of the moral rules people live by come from religious traditions, such as the Ten Commandments, the Five Precepts, the Golden Rule or the Confucian virtues, and from philosophical traditions, such as humanism. The guidelines should cover them. But traditions make claims about God, revelation and the nature of reality that this repository can't and shouldn't judge, and they disagree with one another and within themselves. How should they be included?

## Decision Drivers

* Respect for every tradition, and for readers with none.
* Accuracy: what a tradition teaches should be traceable to its own texts and to scholarship.
* Usefulness: readers should see where traditions agree with each other and with the general rules.

## Considered Options

* Leave religion out and cite only secular sources
* Merge religious teachings into the general rules
* Describe each tradition on its own page, attributed and sourced, and map its teachings to the general rules without scoring them

## Decision Outcome

Chosen option: "Describe each tradition on its own page". Each page in `traditions/` sets out what the tradition teaches about how to live and treat others, attributed to the tradition and cited to its own texts in reliable editions and to scholarly reference works. It shows the differences between schools, and maps each teaching to the general rules it matches. Tradition pages have no key rules and no scores for teachings, so the repository never ranks one tradition's teaching above another's. The general rules may cite traditions' texts as evidence of agreement, but no general rule rests on one tradition alone.

### Consequences

* Good, because readers can see what each tradition teaches in its own words, and where traditions agree.
* Good, because the agreement between traditions is itself evidence for the general rules ([ADR-0006](0006-write-rules-only-where-traditions-agree.md)).
* Bad, because a short page can't do justice to a tradition. Pages link to the tradition's texts and to fuller scholarly treatments, and their "Differences within the tradition" sections make the simplification visible.
* Bad, because the first set of traditions leaves many out. The index says so, and invites contributions.

### Confirmation

`scripts/check_citations.py` requires a source link in every list item and table row on tradition pages, and `scripts/rank.py check` fails if a tradition page has key rules without an ID or names a rule ID that doesn't exist.
