# Contributing

## 1. Reference first

Before writing anything, look for an existing source that covers the topic. Prefer sources in this order:

1. International instruments and law: UN declarations and conventions, regional human rights treaties, intergovernmental recommendations (UNESCO, OECD, ILO, WHO)
2. The code of ethics of the profession or field (ACM, WMA, SPJ, …) and the field's founding documents, such as the Belmont Report
3. Official standards and guidance from public bodies and standards organisations
4. Scholarly reference works, such as the [Stanford Encyclopedia of Philosophy](https://plato.stanford.edu/), and the primary publications of the people who defined an idea
5. For tradition pages: the tradition's own texts in reliable editions, and its official bodies
6. Well-maintained educational resources, such as [Ethics Unwrapped](https://ethicsunwrapped.utexas.edu/) or the [Markkula Center for Applied Ethics](https://www.scu.edu/ethics/)

If such a source exists, **add it under "Adopted references"** with one line saying what it covers and when to use it. Don't restate its content.

Write your own rule under "Key rules" only when:

- no single source covers the point, or several sources need to be combined, or
- the sources leave a practical choice open that readers need help with.

Even then, the rule must link to the source(s) that support it.

**Agreement, not sides.** A rule states what international instruments, professional codes and the major traditions broadly agree on ([ADR-0006](docs/decisions/0006-write-rules-only-where-traditions-agree.md)). If serious traditions or thinkers disagree, for example on euthanasia, eating animals or the moral status of embryos, don't write a rule. Add an entry under "Open questions" that names the question, links a source that sets out the positions, and summarises them in a sentence or two without taking a side.

**Secular and religious sources.** A rule in `general/` should cite at least one secular source, such as an instrument, a code or a reference work. You can add a tradition's text to show that the traditions agree, but a rule must never rest on one tradition alone.

**General rule or domain rule?** Check [RULES.md](RULES.md) before adding a rule. If a general rule already states the principle, a domain rule should add only what the domain adds (the practice, the code's requirement, the specific situation) and name the general rule's ID, not restate it. When three or more domain files need the same principle, add it to `general/` and keep the domain rules to their specifics.

## 2. File formats

### General topics and domains

Every guideline file in `general/` and `specific/` uses these sections. Leave out any section that would be empty.

```markdown
<!-- rule-prefix: TOPIC -->
# Topic

One or two sentences on scope.

> Entries are sorted by score from 1 to 10 ([criteria](../RANKING.md)): … (added by rank.py fix)

## Adopted references

- `9` [Title](https://…): what it covers and when to use it.

## Key rules

### Subsection

- `8` `TOPIC-1` **Short imperative rule.** One or two sentences of explanation. ([Source](https://…))

## How to apply

- `7` [Practice or tool](https://…): what it is and how it helps. Supports `TOPIC-1`.

## Open questions

- `8` [Source that sets out the positions](https://…): the question, and the main positions in one or two neutral sentences.

## Tutorials and further reading

- `6` [Title](https://…): what you will learn.
```

Rules:

- **Every list item must contain a link.** A parent item whose sub-items each have a link is fine. Prose paragraphs give context only. Don't put rules in them.
- **Every reference entry and key rule starts with its score** in backticks. **Key rules also have an ID.** See [Scores, IDs and freshness](#4-scores-ids-and-freshness) below.
- **"How to apply"** lists practices, methods, templates and tools that help people follow the rules: a decision-making framework, a consequence-scanning workshop, a model card template, a speak-up channel. Name the rule IDs each one supports.
- Link to the most specific page that supports the statement, not to a site's home page.
- Keep rules short. If a rule needs more than two sentences, the source probably deserves an "Adopted references" entry instead.
- Write rules as advice to the reader ("Tell the truth…", "Get informed consent…"), in plain words. Explain technical or philosophical terms the first time you use them.
- Don't paste large excerpts from sources. Summarise in your own words and link. Short quotations of a few words are fine when the exact wording matters, for example a tradition's own formulation of the Golden Rule.
- If you use an abbreviation that readers may not know, add it to [GLOSSARY.md](GLOSSARY.md). The website shows its meaning as a tooltip wherever it appears.
- This repository gives moral guidance, not legal, medical, financial or religious advice. When a rule touches the law, say which law and where it applies, and recommend checking with a professional where that matters.

### Tradition pages

Pages in `traditions/` describe what a religious or philosophical tradition teaches about how to live and treat others ([ADR-0007](docs/decisions/0007-describe-traditions-on-their-own-terms.md)). They have no key rules and no rule prefix. Copy [`traditions/_template.md`](traditions/_template.md), which uses these sections:

- **Overview** (prose): who follows the tradition, its main texts and authorities, and how its moral teaching is grounded.
- **Adopted references**: the tradition's texts in reliable editions, its official bodies' teaching documents where it has them, and scholarly overviews. Scored like any source.
- **Core moral teachings**: a table with one row per teaching: the teaching, what it asks in practice, the related rule IDs in `general/` and `specific/`, and the source. Order the rows as the tradition itself presents them, not by score.
- **Differences within the tradition**: the main schools, denominations or interpretations where they differ on moral questions, each with a source. Like other reference entries, each starts with its source's score.
- **Tutorials and further reading.**

Write about every tradition in the same neutral voice:

- **Attribute every teaching**: "The Qur'an teaches…", "In the Analects, Confucius says…", "Jain ethics holds…". Never state a religious claim as a fact or as false.
- **Cite the tradition's own texts** for what it teaches, in a reliable edition or translation (for example [Sefaria](https://www.sefaria.org/) or [SuttaCentral](https://suttacentral.net/)), and scholarly reference works for how it is understood. Give chapter and verse, or the equivalent, in the link text.
- **Respect sites' terms.** Some text sites, such as the Chinese Text Project, forbid automated access. Don't script them; cite another reliable edition instead.
- **Prefer sources the tradition itself or scholars recognise**. Don't cite devotional blogs, polemical sites, or sites written to attack a tradition.
- **Show the tradition's diversity.** Most traditions have schools that disagree. Don't present one school's view as the whole tradition's.
- **Map, don't merge.** In the "Related rules" column, link a teaching to the general rules it matches, but don't change a general rule to fit one tradition.

## 3. Writing style

- British spelling in our own text (organisation, recognise, behaviour). Keep titles of sources as they are written.
- Short sentences and common words. Readers include people who read English as a second language, and AI agents.
- Respectful, non-judgemental language about people, cultures and beliefs.

## 4. Scores, IDs and freshness

**Scores.** Every source and every key rule has a score from 1 to 10. [RANKING.md](RANKING.md) defines the criteria and levels.

- **Sources**: the score lives in [sources.csv](sources.csv), one row per URL. A reference entry shows the score of its first link.
- **Key rules**: the score is written at the start of the rule, for example `` `8` `HON-3` **Rule.** ``.

**Rule IDs.** Every key rule has a stable ID, made of the file's prefix and a number, such as `HON-3` or `AI-2`. The prefix is declared on the file's first line as `<!-- rule-prefix: HON -->`.

- New rules get the next free number automatically. Don't pick numbers yourself.
- A rule keeps its ID when it's reworded, re-scored or re-sorted.
- When a rule is removed, its ID is retired in [rules.csv](rules.csv) and never reused. To move a rule to another file, remove it and add it as a new rule there.
- [RULES.md](RULES.md) lists every rule by ID.

**Freshness.** Each source has a `verified` date in `sources.csv`, the last time someone confirmed the page still says what the guidelines cite it for.

- New links get today's date. You must have verified them (see [AGENTS.md](AGENTS.md)).
- Sources older than a year show up in the CI summary. Re-verify them with the `reverify-sources` project skill, or by hand: read the page, then update the date or fix the rule.

After adding or changing entries, run:

```bash
python3 scripts/rank.py fix
```

The command:

- adds new links to `sources.csv` with an empty score and removes unused ones,
- copies scores into the reference entries and gives new rules an ID,
- sorts every list by score,
- regenerates [SOURCES.md](SOURCES.md), [RULES.md](RULES.md) and the [checklists](checklists/general.md).

Fill in the empty scores, then run it again. Lists must be tight (no blank lines between items) to be sorted.

## 5. Adding a domain or a tradition

**A domain** (a profession, field or area of life):

1. Copy `specific/_template/` to `specific/<domain>/` (lower-case, hyphenated).
2. Fill in `README.md`, and set a new, unique rule prefix in its first line. Split into more files only when the README gets long. Give each new file with key rules its own prefix, except when you split an existing README: then keep its prefix in every new file, so that the rule IDs don't change.
3. Add the domain to the table in the root [README.md](README.md) and in [specific/README.md](specific/README.md).
4. Add its detection hints to the domain table in [skills/ethics-review/SKILL.md](skills/ethics-review/SKILL.md).
5. Give it a sidebar icon for the website in `NAV_ICONS` in [scripts/build_site.py](scripts/build_site.py), from the Lucide set that Zensical bundles.

**A tradition**:

1. Copy [`traditions/_template.md`](traditions/_template.md) to `traditions/<tradition>.md`.
2. Fill it in following [Tradition pages](#tradition-pages) above.
3. Add it to [traditions/README.md](traditions/README.md) and the root [README.md](README.md).

## 6. Checks

Run these before opening a pull request:

```bash
python3 scripts/check_citations.py                     # every list item and table row has a link
python3 scripts/rank.py check                          # scores, IDs, sort order, SOURCES.md and RULES.md
python3 scripts/verify_sources.py                      # no broken or retired sources (needs network)
python3 scripts/verify_sources.py --stale              # sources not verified in the last year
lychee --config lychee.toml './**/*.md'                # links resolve (https://lychee.cli.rs/)
claude plugin validate .                               # plugin and marketplace manifests are valid
zizmor .                                               # workflow security audit (https://docs.zizmor.sh/)
```

To preview the website, install the generator once and build or serve it:

```bash
pip install -r requirements.txt
python3 scripts/build_site.py            # builds build/site/ in strict mode, like CI
python3 scripts/build_site.py --serve    # live preview at http://localhost:8000
```

The script stages the Markdown and generates the navigation from the indexes, so a new file, domain or tradition appears on the site once it's linked from its index. Links to files that aren't on the site, such as CSV files and scripts, point to GitHub.

CI runs the same checks on every push and pull request, and weekly to catch link rot and retired pages. `verify_sources.py` catches pages that still answer HTTP 200 but redirect to a home, 404 or "deprecated" page, or that serve an empty page marked `noindex`, which a plain link checker misses.

### Sites that block automated link checks

Some sites return `403` to bots even when the page exists. They are listed in [`lychee.toml`](lychee.toml) under `exclude`. Check those links by hand, and only add a domain to the list after confirming in a browser that the page works.

### Pages that move or disappear

When a source breaks, first check whether the page, or its whole site, just moved: that's much more common than a page being retired. Look for a redirect or a move notice on the site, check whether other links to the same site broke too, and search for the page's title. If it moved, update the link and read the new page, because a redirect can lead to a less specific page. `verify_sources.py` lists permanent redirects (HTTP 301 and 308) as MOVED: the old link still works, so they don't fail CI, but they go stale.

Only if you find no new address: replace a page that was clearly retired with its successor or an equivalent current source. Otherwise don't remove it. If it may come back, keep it cited and park its exact URL in the "Temporarily unavailable" part of `exclude` in [`lychee.toml`](lychee.toml), with the date and the reason. Ask the repository owner before removing a source that has no replacement.

## 7. Licensing of contributions

By contributing, you agree that guideline content is licensed under [CC BY 4.0](LICENSE), and code and skills under [MIT](LICENSE-CODE), as described in the [README](README.md#license). Quotations from sources remain under their own licenses.

## 8. Changing the skills

Skills live in `skills/<name>/SKILL.md` ([Agent Skills format](https://agentskills.io/specification)). Keep the `name` field equal to the folder name. Keep `description` under 1024 characters and lead with what the skill does and when to use it. Skills must cite guideline files and their sources, must not invent rules or links, and must not take sides on open questions. After changing a skill, run its evals (see [evals/README.md](evals/README.md)), and add a case when you add a skill.
