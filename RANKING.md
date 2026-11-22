# Ranking criteria

Every source and every key rule in this repository has a score from 1 to 10. Scores decide the order of each list (highest first). They group entries into three levels, and they give reviews a severity hint.

A score says how important a rule is to follow and how broad the agreement behind it is. It isn't a verdict on people, and it never ranks religious or philosophical traditions: the [tradition pages](traditions/README.md) have no scored rules, and their sources are scored only on the source criteria below.

## Levels

| Score | Sources | Key rules |
| --- | --- | --- |
| 9–10 | **Start here**: read these first | **Fundamental**: follow in nearly every situation. Departing from one needs a strong, stated justification, and some, such as the bans on torture and slavery, allow no exception at all |
| 6–8 | **Recommended**: read when working on the topic | **Recommended**: follow in most situations |
| 1–5 | **Further reading**: for depth or special cases | **Situational**: follow when the situation calls for it |

## Scoring sources

Judge each source on five criteria:

1. **Authority**: is it an international instrument, the code of the profession or field, an official standard or guidance, a tradition's own text in a reliable edition, the leading scholarly reference work, or the work of the person who defined the idea?
2. **Coverage**: does it cover the whole topic, or one detail of it?
3. **Currency**: is it in force, maintained and up to date? For classical and religious texts, currency means a reliable current edition or translation.
4. **Access**: is the full content freely available online?
5. **Actionability**: does it give concrete guidance that changes what people do, or does it survey a debate?

Then pick the score whose description fits best:

| Score | The source is… | Examples |
| --- | --- | --- |
| 10 | The definitive, widely adopted instrument, code or text for a whole area, which this repository adopts as the baseline | the Universal Declaration of Human Rights, the ACM Code of Ethics, the Declaration of Helsinki |
| 9 | An essential primary source: a core international instrument or professional code, or a tradition's foundational text in a scholarly or official edition | the Belmont Report, the UN Guiding Principles on Business and Human Rights, the Analects in a scholarly translation with the Chinese text |
| 8 | A highly authoritative source on an important sub-topic | a Stanford Encyclopedia of Philosophy entry, official guidance that backs a key rule, a professional body's guidance on one area |
| 7 | Authoritative but narrower or less current | guidance on one practice, an official page on one topic, a respected book that isn't freely available |
| 6 | Good supporting material that overlaps with higher-ranked sources | a clear explanation, a worked case, a teaching video |
| 5 | Useful in specific contexts, or a secondary explanation of something covered better elsewhere | a toolkit's home page, a community guide |
| 4 | Narrow or limited in scope | |
| 3 | Dated or only partly relevant | an article that predates current law or codes |
| 1–2 | Kept for completeness only: archived, superseded or hard to access | |

A reference entry (in "Adopted references", "Open questions", "Tutorials and further reading" or the reading list) shows the score of its **first link**.

Rules of thumb, adopted from the [architecture guidelines'](https://depuschm.github.io/architecture-guidelines/RANKING/) calibration rounds:

- A link to one section of a page usually scores at most 7, even when the page as a whole scores higher.
- An index or home page scores at most 9. A 10 is for a document that itself covers the whole topic.
- A Stanford Encyclopedia of Philosophy entry usually scores 8: authoritative and current, but an overview of a debate rather than guidance.

## Scoring key rules

Judge each rule on four criteria:

1. **Harm if ignored**: does breaking it cause serious or lasting harm to people, animals or the environment, or violate basic rights, or does it only cause friction or a missed good?
2. **Breadth**: does it apply to almost everyone in almost every situation, or only in some roles or situations?
3. **Consensus**: do international instruments, professional codes and the major religious and philosophical traditions agree? Agreement across secular and religious traditions, and in law, counts most.
4. **Repairability**: can the harm be undone or put right later, or is it irreversible?

| Score | The rule… |
| --- | --- |
| 10 | Protects against grave, irreversible harm, such as to life, bodily integrity or liberty, applies to everyone, and is universally agreed: in international law, in every major tradition and in professional codes |
| 9 | Is a core duty for nearly everyone, which international instruments or professional codes state as a must, a right or an absolute prohibition |
| 8 | Is important in most situations: ignoring it causes significant harm, or damage to trust, that is hard to repair |
| 7 | Is recommended in most situations, with a clear benefit at modest cost |
| 6 | Improves conduct, but ignoring it is easy to recover from |
| 5 | Is valuable in common but not universal situations, for example in one role, at a certain scale or in one kind of relationship |
| 3–4 | Applies only in specific circumstances |
| 1–2 | Is niche |

Within a topic subsection, rules are sorted by score. Rules with the same score keep their written order.

Rules exist only where there is broad agreement ([ADR-0006](docs/decisions/0006-write-rules-only-where-traditions-agree.md)). Questions on which serious traditions disagree aren't scored as rules. They are listed under "Open questions", with sources that set out the positions.

## How scores are used

- **Ordering**: every list of ranked entries is sorted by score, highest first.
- **Overview**: [SOURCES.md](SOURCES.md) lists every source in one place, grouped by level.
- **Reviews**: the [`ethics-review`](skills/ethics-review/SKILL.md) skill uses rule scores as a severity hint. Breaking a 9–10 rule is usually *High*, 6–8 *Medium* and 1–5 *Low*, adjusted for the actual harm.

## Calibration

Scores are judgements, so they are checked with blind second opinions: someone scores a sample of rules and sources against this file without seeing the existing scores, and any band where the two disagree systematically is re-checked. The results of each round are recorded here.

The first round, on 2026-11-22, covered the repository as first published: an independent reviewer, who hadn't seen the scores, scored a sample of 46 rules (stratified by level) and 45 sources, and checked 30 randomly chosen rules against the first source each cites.

- 89% of rule scores (24 of 46 exactly) and 89% of source scores (29 of 45 exactly) were within one point.
- Rules ran about half a point high. Rules scored 8 came back lower in 11 of 22 cases and never higher, rules scored 9 came back lower in 5 of 10, and rules scored 7 came back lower in 5 of 8; the 10s and the few rules scored 1–5 matched. Every rule scored 9 or 8 (182 rules) was then re-checked against the table above. Twelve 9s were lowered to 8, mostly rules that codes and laws require only in some settings, such as for high-risk AI systems, or whose harm is mainly financial and recoverable, and 39 8s were lowered to 7, mostly reasoning aids and self-checks, rules whose harm is mainly financial and recoverable, and rules whose consensus is strong only for children or in one jurisdiction. Rules that state duties found across traditions and in law kept their scores, such as keeping promises (`HON-5`) and equal pay for work of equal value (`WORK-3`). The 7s were not re-checked in this round, because their sample was small; they are the first band to re-check in the next one.
- Five rules were two points apart and were re-scored. One rule that presented voting as a duty everyone agrees on was reworded (`REL-11`), because whether there is a duty to vote is debated.
- Sources ran 0.2 points high. Archived pages, a closed consultation and an early-stage press release were lowered, and twelve links to a single verse that had been scored 8 were lowered to 7.
- None of the 30 checked rules was unsupported: 18 were fully supported by the first source they cite, and 12 only partly. Six of those 12 were fully covered by the other sources they cite; the other six were narrowed to what the sources say or given a further source.

This round adds three rules of thumb. A reasoning aid or self-check, such as a test to run before you decide, usually scores at most 7, because the harm of skipping it is indirect. A rule whose consensus is strong only for children scores at most 7 as a rule for everyone. A link to a single verse or passage of a text scores at most 7, like any link to one section.

Repeat the exercise after large additions: sample entries across files and score bands, have someone score them blind, and re-check any band where the difference is systematic.

## Changing a score

- **Sources**: edit the `score` column in [sources.csv](sources.csv).
- **Key rules**: edit the number at the start of the rule.

Then run `python3 scripts/rank.py fix`. It updates the scores shown in the guideline files, re-sorts the lists and regenerates SOURCES.md. `python3 scripts/rank.py check` (also run in CI) fails if anything is unscored, unsorted or out of sync.

Scores are judgements. When you change one, explain why in the pull request, citing the criteria above.
