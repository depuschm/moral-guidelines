---
name: add-guideline
description: Add or update a guideline or tradition page in this Moral Guidelines repository, the reference-first way. Finds and adopts existing codes, instruments, reference works and texts before writing new rules, keeps rules to what sources broadly agree on, verifies every link, keeps the file format, updates the indexes, and runs the checks. Use when asked to add a topic, rule, source, open question, tutorial, new domain folder or tradition page (for example "add guidelines for lawyers", "add a page on Shinto" or "add a rule about gifts").
argument-hint: "[topic, domain or tradition]"
---

# Add a guideline

Follow [CONTRIBUTING.md](../../../CONTRIBUTING.md). This skill turns it into steps.

## 1. Place it

- Morality or ethics for everyone → a file in `general/`. Extend an existing file before creating a new one.
- A profession, field or area of life → `specific/<domain>/`. For a new domain, copy `specific/_template/README.md` to `specific/<domain>/README.md`.
- What a religious or philosophical tradition teaches → `traditions/<tradition>.md`, from `traditions/_template.md`.

## 2. Find existing guidance first

Search for authoritative sources, in this order: international instruments and law, the field's code of ethics, official standards and guidance, scholarly reference works and the primary publications of the people who defined an idea, then well-maintained educational resources. For a tradition: its own texts in reliable editions, its official bodies, and scholarly overviews.

- **If a source covers the topic well**, add it under **Adopted references** with a one-line description. Don't restate it.
- **Write a Key rule only if** no single source covers the point, several need combining, or the sources leave a practical choice open. Every rule still needs a supporting link.
- **If serious traditions disagree**, don't write a rule: add an **Open questions** entry with a source that sets out the positions and a neutral summary ([ADR-0006](../../../docs/decisions/0006-write-rules-only-where-traditions-agree.md)).

## 3. Verify every link

For each URL you add:

1. Fetch it and confirm it loads (HTTP 200 after redirects). Watch for soft 404s: the site redirects to its home page or to a "deprecated" or "no longer available" page, or it shows a "not found" page with status 200. Compare the final URL with the one you requested.
2. Confirm the page actually supports the statement you attach to it. Quote it to yourself before writing the rule. Many religious text sites render with JavaScript; read them through the site's API or an equivalent scholarly edition if the HTML has no text.
3. If the URL permanently redirects, use the final, canonical URL.
4. Link to the most specific page, not a site's home page.

Never add a URL from memory without fetching it.

## 4. Write it in the house format

```markdown
- `8` **Short imperative rule.** One sentence of explanation. ([Source title](https://…))
```

Every list item and table row in `general/`, `specific/` and `traditions/` needs at least one link. Keep rules to one or two sentences. On tradition pages, attribute every teaching to the tradition and show where its schools differ ([ADR-0007](../../../docs/decisions/0007-describe-traditions-on-their-own-terms.md)).

## 5. Score it

Score every new source and rule from 1 to 10 using the criteria tables in [RANKING.md](../../../RANKING.md). Don't guess: name the criteria behind each score in your summary.

- **Rules**: write the score at the start of the rule, for example `` `8` **Rule.** ``. Don't write an ID: `fix` assigns the next free one for the file's prefix (`<!-- rule-prefix: … -->` on line 1).
- **Sources**: run `python3 scripts/rank.py fix`. It adds new links to `sources.csv` with an empty score and today's `verified` date. Fill in the `score` column (and tidy the `title` if the link text was generic), then run `fix` again. It copies the scores into the entries, sorts the lists and regenerates SOURCES.md, RULES.md and the checklists.
- **Practices**: if a practice, template or tool helps people follow the rule, add it under "How to apply" with the rule IDs it supports.

## 6. Update the indexes (new files, domains or traditions)

- `README.md`: the general, domain or traditions table or list.
- `general/README.md`, `specific/README.md` or `traditions/README.md`.
- For a new domain: the detection table in `skills/ethics-review/SKILL.md`, and an icon in `NAV_ICONS` in `scripts/build_site.py`.
- New abbreviations: `GLOSSARY.md`.

## 7. Check

```bash
python3 scripts/check_citations.py
python3 scripts/rank.py check
lychee --config lychee.toml './**/*.md'   # if lychee is installed
```

Fix any failures. Then summarise what you added and list every new source URL.
