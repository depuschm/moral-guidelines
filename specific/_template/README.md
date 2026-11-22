<!-- rule-prefix: DOMAIN -->
# <Domain name>

<!--
Copy this folder to specific/<domain>/ and replace every placeholder, including the rule prefix on line 1
(upper-case and unique, for example JOUR). Reference first: if the field has a code of ethics or an
international instrument, adopt it and keep "Key rules" short. Every list item must contain a link to a
source that supports it (checked by scripts/check_citations.py). Every reference entry and key rule starts
with its score, 1-10 (see RANKING.md). Write new rules without an ID: `python3 scripts/rank.py fix` assigns
IDs, adds new links to sources.csv for you to score, sorts the lists and adds the legend line. Write rules
only where sources broadly agree; put contested questions under "Open questions" (ADR-0006).
Delete this comment when done.
-->

Scope: who and what these guidelines apply to. Name the general rules that matter most here by ID.

## Adopted references

- `10` [The field's code of ethics](https://example.com/code): what it covers. **Follow it as the baseline.**
- `8` [Official guidance on one important area](https://example.com/guidance): what it covers.

## Key rules

Only rules the adopted references don't already cover, or choices they leave open.

### <Subsection>

- `8` `DOMAIN-1` **Short imperative rule.** One sentence of explanation. ([Source title](https://example.com/source))

## How to apply

Practices, methods and tools that help people follow the key rules.

- `7` [Practice or tool](https://example.com/practice): what it is and how it helps. Supports `DOMAIN-1`.

## Open questions

Questions on which serious traditions or experts disagree. These guidelines don't pick a side.

- `8` [Source that sets out the positions](https://example.com/debate): the question, and the main positions in one or two neutral sentences.

## Tutorials and further reading

- `7` [Course or guide](https://example.com/course): what you will learn.
