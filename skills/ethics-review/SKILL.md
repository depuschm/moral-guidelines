---
name: ethics-review
description: Review a product, feature, design, codebase, pull request, AI system, game, marketing campaign, business plan, workplace policy, research protocol or other plan against the Moral Guidelines, applying the general rules plus the rules for every domain it detects (software, AI, data, design, games, security research, business, marketing, workplace, research, healthcare, journalism, public service, online life). Produces a findings report where every finding cites the rule it is based on and that rule's source link, and lists contested questions without taking sides. Use when asked for an ethics review, an ethical risk assessment, a "dark patterns" or "is this ethical?" check, or before launching something that affects people.
argument-hint: "[path | PR/branch | document | description]"
---

# Ethics review

Review the target against this repository's guidelines. Each finding has to be traceable to a written rule and its source. This is an ethics review, not a legal compliance audit: where a finding depends on a law, name the law and recommend checking with a lawyer.

## Locate the guidelines

The guidelines root is `${CLAUDE_PLUGIN_ROOT}`. If that placeholder wasn't replaced with a path (the skill isn't running as a plugin), the root is two directories above this `SKILL.md` file. You need:

- `<root>/RULES.md`: every rule with its ID, score and main source
- `<root>/general/README.md`: the index of general guidelines
- `<root>/specific/<domain>/README.md`: the domain guidelines

## 1. Scope

Work out what to review from the request (`$ARGUMENTS` if given):

- **A codebase or directory**: map what the product does for and to people first (who uses it, what data it collects, what it decides, how it makes money), then go deep where the potential harm is greatest.
- **A pull request or branch**: review the diff (`git diff <base>...HEAD`) for its effect on people, and judge it in the context of the existing product.
- **A document, design, campaign or plan**: review the proposal itself, and ask for the missing information you need.
- **A description in the conversation**: review what you were told, and list the assumptions you had to make.

If the scope is unclear and the target is large, ask once. Otherwise state your assumption and continue.

## 2. Identify the people affected

Before reading any rule, list the stakeholders: the direct users, people the product makes decisions about, bystanders, workers (including contractors and moderators), communities, future generations and animals where relevant. Mark the vulnerable groups among them, such as children, people in financial difficulty, patients and people with disabilities. Harms to vulnerable people weigh more.

## 3. Detect domains

| Domain | Signals | Guidelines |
| --- | --- | --- |
| Software engineering | Any codebase or software project | `specific/software/` |
| Artificial intelligence | Model or LLM code and dependencies (`anthropic`, `openai`, `transformers`, `torch`, `scikit-learn`), prompts, model files, or features that classify, rank, recommend, generate content or make decisions about people | `specific/ai/`, plus `specific/data/` |
| Data and analytics | Personal data in databases or forms, analytics or tracking SDKs (for example Google Analytics, Segment, Mixpanel, Amplitude, Meta Pixel), data pipelines, surveys, data sharing or data sales | `specific/data/` |
| Product and UX design | User interfaces and their copy: sign-up, checkout, pricing, subscriptions and cancellation, consent banners, notifications, onboarding; design documents and mock-ups | `specific/design/` |
| Games | A game project (Unity, Godot, Unreal, GameMaker or a custom engine), in-game stores, virtual currencies, loot boxes, gacha, battle passes, ads, chat, matchmaking, or a game aimed at children | `specific/games/`, plus `specific/design/` and `specific/online/` |
| Security research | Penetration-test scopes, vulnerability reports, exploit or scanning code, bug bounty programmes, `SECURITY.md` | `specific/security/` |
| Business and human rights | Business plans, supply chains and sourcing, supplier contracts, codes of conduct, sustainability reports, anti-bribery and gifts policies | `specific/business/`, plus `general/human-rights.md` |
| Marketing and advertising | Ads, landing pages, marketing emails, influencer briefs, product or "green" claims, pricing pages | `specific/marketing/` |
| Workplace and leadership | HR policies, hiring processes, job ads, pay structures, performance reviews, employee monitoring, speak-up or whistleblowing policies | `specific/workplace/` |
| Research | Study protocols, consent forms, survey instruments, experiments on users, ethics applications, papers and authorship | `specific/research/` |
| Healthcare | Health data, medical or wellbeing apps, clinical workflows, patient communication | `specific/healthcare/`, plus `specific/data/` |
| Journalism | Articles, newsroom policies, publication decisions, corrections | `specific/journalism/` |
| Public service | Government services, public procurement, decisions by public officials, public-sector policies | `specific/public-service/` |
| Online life | Social posts, community guidelines, moderation policies, features for user-generated content or sharing images | `specific/online/` |

A target often matches several, for example a mobile game with a store and chat matches games, design, data and online life.

Always apply these general files: `reasoning.md` (for the process), `honesty.md`, `harm-and-care.md`, `respect-and-consent.md` and `fairness.md`. Add `human-rights.md` for businesses, public bodies and products used at scale, `responsibility.md` for organisational processes, `environment.md` for products with a material footprint, and `animals.md` where animals are affected.

Use the tradition pages in `traditions/` only if the person asks, or if the organisation states that it follows a tradition. Then report how the tradition's teachings bear on the findings, attributed to the tradition, alongside the general rules.

## 4. Review

For each detected domain and general file, go through its key rules, highest score first, and check the target against them:

- Look for evidence in the code, interface, copy, data flows, policies or plans. Quote file paths and lines, screens or passages.
- Check the "How to apply" practices too: their absence is often a finding (for example, an AI feature with no impact assessment).
- Note what the target does well. A review that only lists problems is less useful and less fair.
- If something looks wrong but no rule covers it, put it under "Not covered by the guidelines" as your own observation, without a rule ID.
- If a finding touches a question listed under "Open questions", don't decide it. List it under "Open questions raised", with the positions and the source.

## 5. Report

Every finding must include the rule's **source link**, copied exactly from the guideline file. A finding without its source breaks this repository's core rule. Use this structure:

```markdown
## Ethics review: <target>

**Domains:** <domains detected> · **Stakeholders:** <who is affected, vulnerable groups marked> · **Guidelines applied:** general/…, specific/…

### Summary
<2–4 sentences: what the target does to and for people, the top risks, what it does well>

### Findings
| # | Severity | Finding | Evidence | Rule | Source |
| --- | --- | --- | --- | --- | --- |
| 1 | High | <what is wrong, who is harmed and how> | `src/checkout/Timer.tsx:12` | `HON-2` (8): "Don't deceive by other means either…" | [SEP, The Definition of Lying and Deception](https://plato.stanford.edu/entries/lying-definition/#TraDefDec) |

### What it does well
- <Practice or decision, with the rule it meets>

### Recommendations
1. <Concrete next step, linked to finding numbers. Name a practice from the file's "How to apply" section where one exists.>

### Open questions raised
- <Question>: <positions, neutrally> ([source](…))

### Not covered by the guidelines
- <Observation (opinion, no rule ID)>
```

Severity starts from the rule's score: 9–10 usually High, 6–8 Medium, 1–5 Low. Then adjust for the actual harm: how severe and how likely it is, how many people it affects, whether they are vulnerable, and whether it can be undone. Say why when you move a finding up or down.
