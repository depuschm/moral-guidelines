---
status: accepted
date: 2026-11-22
decision-makers: depuschm
---

# Score every source and rule from 1 to 10, grouped into three named levels

## Context and Problem Statement

The collection will have hundreds of sources and rules. Readers need to know what to read first and which rules matter most, and reviews need a sense of severity. Moral rules differ greatly in weight: the ban on torture and the advice to say thank you are both moral rules. How should entries be ranked?

## Decision Drivers

* Readers should see the most important entries first.
* Ranking should be consistent across contributors.
* Reviews need a severity signal.
* Scores must not rank people or traditions.

## Considered Options

* No ranking, ordered by topic only
* Named levels only, such as "must", "should" and "may"
* Numeric scores from 1 to 10 only
* Scores from 1 to 10, grouped into named levels

## Decision Outcome

Chosen option: "Scores from 1 to 10, grouped into named levels": fundamental (9–10), recommended (6–8) and situational (1–5). Scores give a fine-grained sort order, and the levels tell readers how firmly to follow a rule. The criteria for rules are the harm if a rule is ignored, its breadth, the consensus behind it and whether the harm can be repaired. Consensus across international law, professional codes and the major traditions counts most.

### Consequences

* Good, because every list puts the most important entries first, and [SOURCES.md](../../SOURCES.md) ranks all sources in one place.
* Good, because the review skills can use rule scores as a severity hint.
* Bad, because scores are judgements and can drift between contributors. [RANKING.md](../../RANKING.md) defines the criteria, and blind second opinions calibrate them.
* Neutral, because tradition pages have no scored rules ([ADR-0007](0007-describe-traditions-on-their-own-terms.md)), so no tradition's teachings are ranked against another's.

### Confirmation

`scripts/rank.py check` fails CI if any entry is unscored or any list is unsorted.

## More Information

The criteria and levels are in [RANKING.md](../../RANKING.md).
