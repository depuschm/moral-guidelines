# Instructions for AI agents

This repository is a curated, source-linked collection of moral guidelines (ethics, values and good practice), descriptions of what the major religious and philosophical traditions teach, and AI skills that apply them.

## Using the guidelines (in other projects and conversations)

- Guidelines live in `general/` (morality and ethics for everyone), `specific/<domain>/` (professions, fields and areas of life) and `traditions/` (what each religious or philosophical tradition teaches).
- When you apply or cite a guideline, use the rule's ID (for example `HON-1`, listed in [RULES.md](RULES.md)) and include the rule's source link.
- Every source and rule has a score from 1 to 10 ([RANKING.md](RANKING.md)), and lists are sorted by it. Read the highest-scored entries first. Use rule scores to weigh findings: 9–10 fundamental, 6–8 recommended, 1–5 situational.
- Don't invent rules or links. If no guideline covers a question, say so.
- Don't take sides on questions the guidelines list under "Open questions". Present the positions and their sources.
- Describe traditions in their own terms, attributed ("Buddhist teaching holds…"), and never rank them or treat one as the standard for the others.
- This is moral guidance, not legal, medical, financial or religious advice. Say so when a question needs a professional.
- Skills in `skills/` show the intended workflows (asking the guidelines, ethics reviews, ethical decision records, consequence scanning, adopting practices).

## Editing this repository

Follow [CONTRIBUTING.md](CONTRIBUTING.md). The rules that matter most:

1. **Reference first.** If an authoritative source exists, add it under "Adopted references" instead of rewriting it.
2. **Every list item and table row in `general/`, `specific/` and `traditions/` must contain a link** to a source that supports it. Prose paragraphs are for context only.
3. **Verify every link you add** by fetching it. Make sure it loads and actually supports the statement. Never add a URL from memory without checking it.
4. **Agreement, not sides.** Write rules only where sources broadly agree. Contested questions go under "Open questions" ([ADR-0006](docs/decisions/0006-write-rules-only-where-traditions-agree.md)).
5. **Score every new entry** following [RANKING.md](RANKING.md): sources in `sources.csv`, rules inline. Then run `python3 scripts/rank.py fix`, which assigns rule IDs. Never edit or reuse rule IDs by hand.
6. Run `python3 scripts/check_citations.py` and `python3 scripts/rank.py check` after editing guideline files.
7. When adding a domain folder, update the indexes in `README.md` and `specific/README.md` and the detection table in `skills/ethics-review/SKILL.md`. When adding a tradition, update `traditions/README.md` and `README.md`.
