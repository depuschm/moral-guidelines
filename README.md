# Moral Guidelines

Morality, ethics and good practice: source-linked guidelines for everyday life and for specific fields, what the major religious and philosophical traditions teach, and AI skills that apply them.

**Read it as a website:** [depuschm.github.io/moral-guidelines](https://depuschm.github.io/moral-guidelines/), with search, dark mode and a link to every rule.

The repo is **reference-first**, like its sister project, the [Architecture Guidelines](https://github.com/depuschm/architecture-guidelines). Where a good source already exists (an international instrument such as the Universal Declaration of Human Rights, a profession's code of ethics, a scholarly reference work, or a tradition's own texts), we link to it and adopt it. We only write our own short rules where nothing suitable exists, and every rule we write links to a source.

Rules state **what people broadly agree on**: international law, professional codes and the major religious and secular traditions. Where serious traditions disagree, for example on euthanasia or eating animals, the guidelines don't take a side. They list the question under "Open questions", with sources that set out the positions ([ADR-0006](docs/decisions/0006-write-rules-only-where-traditions-agree.md)).

Every source and every rule has a **score from 1 to 10**, and lists are sorted by it, so the most important entries come first:

| Score | Sources | Rules |
| --- | --- | --- |
| 9–10 | Start here | Fundamental |
| 6–8 | Recommended | Recommended |
| 1–5 | Further reading | Situational |

[RANKING.md](RANKING.md) explains the criteria, and [SOURCES.md](SOURCES.md) lists every source in one place, ranked, with the date each was last verified.

Every rule also has a **stable ID**, such as `HON-1` or `AI-3`, so reviews, decision records and discussions can cite it. [RULES.md](RULES.md) lists all rules by ID. On the website, `https://depuschm.github.io/moral-guidelines/RULES/#HON-1` is a permanent link to a rule. Where a practice or tool helps people follow a rule, the guideline file names it under **How to apply**.

This is moral guidance, not legal, medical, financial or religious advice.

## Morality and ethics

The two words are often used interchangeably. Where they are distinguished, **morality** is the set of standards of right and wrong that people actually live by, as individuals, groups and societies, and **ethics** is the reasoned study of those standards: which ones are justified and why, together with the codes of conduct of professions and organisations. Ethics has three parts: normative ethics (what we ought to do), applied ethics (real-world problems in fields such as medicine or AI) and metaethics (what moral claims are at all). The [general guidelines](general/README.md#morality-and-ethics-whats-the-difference) explain the difference in more detail, with sources.

This repository covers both: the morality that everyone shares, the ethics of reasoning about it, and the applied ethics of specific fields.

## Structure

```
general/            Morality and ethics for everyone: theories, reasoning, honesty, harm, respect, fairness, rights, …
specific/<domain>   One folder per profession, field or area of life (technology, business, science and health, media and public life)
specific/_template  Starting point for a new domain folder
traditions/         What each religious and philosophical tradition teaches, in its own terms
skills/             AI skills (Agent Skills format) that apply these guidelines
checklists/         One checklist per area, for reviews, kickoffs and personal reflection (generated)
docs/decisions/     Decision records for this repository
RANKING.md          How sources and rules are scored from 1 to 10
SOURCES.md          Every linked source, ranked (generated from sources.csv)
RULES.md            Every rule by ID (generated)
GLOSSARY.md         Abbreviations and their meanings
sources.csv         Score and last-verified date of every source
rules.csv           Registry of rule IDs, including retired ones (never reused)
.claude-plugin/     Makes this repo installable as a Claude Code plugin and marketplace
scripts/            Repository checks (citations, scores, IDs, source freshness) and tooling
zensical.toml       Website configuration, built by scripts/build_site.py
```

## General guidelines

| Topic | What it covers |
| --- | --- |
| [Moral theories](general/moral-theories.md) | Consequentialism, deontology, virtue ethics, care ethics, contractualism, natural law, and using them together |
| [Ethical reasoning and decisions](general/reasoning.md) | A decision process, ethical lenses, biases and rationalisations, moral uncertainty |
| [Responsibility and accountability](general/responsibility.md) | Owning mistakes, apologising and making amends, not hiding behind orders, speaking up |
| [Honesty and trust](general/honesty.md) | Not lying or deceiving, honesty with yourself, keeping promises, giving credit |
| [Harm and care](general/harm-and-care.md) | Not harming, helping people in need, kindness, compassion and giving |
| [Respect, autonomy and consent](general/respect-and-consent.md) | Dignity, self-determination, valid consent, privacy, not manipulating |
| [Fairness and justice](general/fairness.md) | Equal treatment, non-discrimination, impartiality, conflicts of interest, fair procedures |
| [Human rights](general/human-rights.md) | The International Bill of Human Rights, absolute prohibitions, freedoms of others, refusing complicity |
| [Character and values](general/character.md) | Virtues, integrity, building character through practice |
| [Relationships, family and community](general/relationships.md) | Friendship, family duties, gratitude, forgiveness, loyalty, community |
| [Environment and future generations](general/environment.md) | Sustainability, precaution, climate, the interests of people not yet born |
| [Animals](general/animals.md) | Sentience, unnecessary suffering, the duty of care for animals in your keeping |
| [Reading list](general/reading-list.md) | Books, courses and complete guides |

## Domain guidelines

| Area | Domain | Main adopted source |
| --- | --- | --- |
| Technology | [Software engineering](specific/software/README.md) | ACM Code of Ethics and Professional Conduct |
| Technology | [Artificial intelligence](specific/ai/README.md) | UNESCO Recommendation on the Ethics of AI and the OECD AI Principles |
| Technology | [Data and analytics](specific/data/README.md) | UK Data Ethics Framework and the ODI Data Ethics Canvas |
| Technology | [Product and UX design](specific/design/README.md) | EDPB guidelines on deceptive design patterns |
| Technology | [Games](specific/games/README.md) | Principles on paid loot boxes, the ICO Children's code and accessibility guidelines |
| Technology | [Security research](specific/security/README.md) | CERT Guide to Coordinated Vulnerability Disclosure and the Menlo Report |
| Business and work | [Business and human rights](specific/business/README.md) | UN Guiding Principles on Business and Human Rights and the OECD Guidelines |
| Business and work | [Marketing and advertising](specific/marketing/README.md) | ICC Advertising and Marketing Communications Code |
| Business and work | [Workplace and leadership](specific/workplace/README.md) | ILO Declaration on Fundamental Principles and Rights at Work |
| Science and health | [Research with people and animals](specific/research/README.md) | Belmont Report and the Declaration of Helsinki |
| Science and health | [Healthcare](specific/healthcare/README.md) | WMA Declaration of Geneva and International Code of Medical Ethics |
| Media and public life | [Journalism](specific/journalism/README.md) | SPJ Code of Ethics and the IFJ Global Charter of Ethics for Journalists |
| Media and public life | [Public service](specific/public-service/README.md) | Seven Principles of Public Life and the OECD Recommendation on Public Integrity |
| Media and public life | [Online life and social media](specific/online/README.md) | Guidance from UN agencies and online-safety regulators |

To add a domain, copy [`specific/_template`](specific/_template/README.md) and follow [CONTRIBUTING.md](CONTRIBUTING.md).

## Religious and philosophical traditions

Many of the moral rules people live by come from religious traditions, and the agreement between traditions, above all on some form of the Golden Rule, is part of the evidence for the general rules. Each tradition has a page that describes its moral teaching in its own terms, cites its own texts and scholarship, shows where its schools differ, and maps each teaching to the general rules it matches. The pages don't rank traditions or adopt one of them ([ADR-0007](docs/decisions/0007-describe-traditions-on-their-own-terms.md)).

[Overview and shared ground](traditions/README.md) · [Judaism](traditions/judaism.md) · [Christianity](traditions/christianity.md) · [Islam](traditions/islam.md) · [Bahá'í Faith](traditions/bahai.md) · [Hinduism](traditions/hinduism.md) · [Buddhism](traditions/buddhism.md) · [Jainism](traditions/jainism.md) · [Sikhism](traditions/sikhism.md) · [Confucianism](traditions/confucianism.md) · [Daoism](traditions/daoism.md) · [Humanism](traditions/humanism.md)

## Checklists

Every rule of an area in one list, grouped by level and sorted by score, with the practices that support each rule. Use one in a product or design review, a project kickoff, a team charter, or for your own reflection:

[General](checklists/general.md) · [Software](checklists/software.md) · [AI](checklists/ai.md) · [Data](checklists/data.md) · [Design](checklists/design.md) · [Games](checklists/games.md) · [Security research](checklists/security.md) · [Business](checklists/business.md) · [Marketing](checklists/marketing.md) · [Workplace](checklists/workplace.md) · [Research](checklists/research.md) · [Healthcare](checklists/healthcare.md) · [Journalism](checklists/journalism.md) · [Public service](checklists/public-service.md) · [Online life](checklists/online.md)

## AI skills

The [`skills/`](skills) folder uses the [Agent Skills](https://agentskills.io/specification) format (a folder with a `SKILL.md`), which Claude Code and other agent tools can load.

| Skill | Use it to |
| --- | --- |
| [`ask-guidelines`](skills/ask-guidelines/SKILL.md) | Answer "what do the guidelines say about X?" with the relevant rules by ID, score and source, and the traditions' teachings where asked |
| [`ethics-review`](skills/ethics-review/SKILL.md) | Review a product, feature, design, codebase, campaign, policy or plan against these guidelines. Each finding cites the rule and its source |
| [`ethical-decision-record`](skills/ethical-decision-record/SKILL.md) | Work through a moral dilemma with several ethical lenses and record the decision, its reasons and its downsides |
| [`consequence-scanning`](skills/consequence-scanning/SKILL.md) | Find the intended and unintended consequences of a product or feature, and decide what to act on, influence or monitor |
| [`adopt-practices`](skills/adopt-practices/SKILL.md) | Put the practices named under **How to apply** into a team or project, such as a code of conduct, review checklists or model cards, each labelled with the rule IDs it supports |

The skills come with [evals](evals/README.md) that compare runs with and without the plugin. They haven't been run against real models yet: start the **Skill evals** workflow once the repository has an `ANTHROPIC_API_KEY` secret.

Maintainers also get two project skills: [`add-guideline`](.claude/skills/add-guideline/SKILL.md) adds guidelines the reference-first way, and [`reverify-sources`](.claude/skills/reverify-sources/SKILL.md) re-checks stale or retired sources.

### Install in Claude Code

The repo is a [Claude Code plugin](https://code.claude.com/docs/en/plugins) and its own marketplace:

```bash
claude plugin marketplace add depuschm/moral-guidelines
claude plugin install moral-guidelines@moral-guidelines
```

The skills then run as `/moral-guidelines:ethics-review` and so on. Claude also loads them on its own when a request matches.

The plugin has no fixed version, so every commit to `main` is a new release. To receive updates automatically, open `/plugin`, go to **Marketplaces**, select `moral-guidelines` and choose **Enable auto-update**. Otherwise, update by hand with `claude plugin update moral-guidelines@moral-guidelines`. To try the plugin from a local clone without installing it, run `claude --plugin-dir ./moral-guidelines`.

### Use with other agents

Tools that read [`AGENTS.md`](AGENTS.md) or support Agent Skills can use the `skills/` folders directly. The skills find the guideline files relative to their own location (`../../general`, `../../specific`, `../../traditions`), so keep the repo layout intact.

## Contributing

Read [CONTRIBUTING.md](CONTRIBUTING.md). The short version:

1. **Reference first.** Link to an existing code, instrument, reference work or text before writing a new rule.
2. **Agreement, not sides.** Write rules only where sources broadly agree, and list contested questions as open questions.
3. **Every rule has a source.** Each list item and table row in `general/`, `specific/` and `traditions/` must contain a link. CI enforces this with [`scripts/check_citations.py`](scripts/check_citations.py).
4. **Every entry has a score.** Score sources in `sources.csv` and rules inline, following [RANKING.md](RANKING.md). Then run `python3 scripts/rank.py fix`, which also gives new rules their ID, sorts the lists and updates SOURCES.md, RULES.md and the checklists.
5. **Links must work and stay current.** CI runs [lychee](https://lychee.cli.rs/) and [`scripts/verify_sources.py`](scripts/verify_sources.py) on every push and once a week. The script also catches retired pages, and the job summary lists sources not verified in the last year.

### Automation

| What runs | When | Where |
| --- | --- | --- |
| Citation, score and rule ID checks | Every push and pull request | [`checks.yml`](.github/workflows/checks.yml) |
| Workflow security audit with [zizmor](https://docs.zizmor.sh/) | Every push and pull request | [`checks.yml`](.github/workflows/checks.yml) |
| Plugin and marketplace manifest validation | Every push and pull request | [`checks.yml`](.github/workflows/checks.yml) |
| Link check and retired-page detection | Every push and pull request, and weekly | [`checks.yml`](.github/workflows/checks.yml) |
| Sources not verified for a year fail the weekly run, and a failed weekly run opens (or updates) an issue | Weekly | [`checks.yml`](.github/workflows/checks.yml) |
| Website build in strict mode (broken links fail it), deployed to GitHub Pages | Pull requests build it, pushes to `main` deploy it | [`site.yml`](.github/workflows/site.yml) |
| Update pull requests for GitHub Actions and the site generator | Weekly | [`dependabot.yml`](.github/dependabot.yml) |
| Skill evals against real models | When started by hand (needs an `ANTHROPIC_API_KEY` secret) | [`evals.yml`](.github/workflows/evals.yml) |

Issue templates cover suggesting a source, disputing a score, reporting an outdated source and requesting a domain or tradition. The decisions behind how this repository works are recorded in [docs/decisions](docs/decisions/README.md).

## License

- **Guideline content and documentation** (`general/`, `specific/`, `traditions/` and the Markdown files at the root) is licensed under [Creative Commons Attribution 4.0 International (CC BY 4.0)](LICENSE). Short quotations from sources, such as verses quoted on the tradition pages, remain under their own terms.
- **Code and AI skills** (`scripts/`, `skills/`, `.claude/`, `.claude-plugin/`, `.github/` and config files) are licensed under the [MIT License](LICENSE-CODE).
- Linked third-party sources keep their own licenses. This repository links to them and summarises them. It doesn't copy them.
