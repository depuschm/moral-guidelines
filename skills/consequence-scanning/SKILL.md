---
name: consequence-scanning
description: Run a Consequence Scanning session (Doteveryone's agile practice, now hosted by the Ada Lovelace Institute) on a product, feature, policy or plan, alone with the user or as a facilitation plan for a team. Finds intended and unintended consequences for people, communities and the planet, sorts them into act, influence and monitor, links each to the Moral Guidelines' rules, and produces an action log with owners. Use when someone asks what could go wrong, wants to anticipate harms or side effects, asks for a pre-mortem or impact assessment of a feature, or plans a responsible-innovation session.
argument-hint: "[product, feature or plan]"
---

# Consequence scanning

Consequence Scanning is an agile practice by [Doteveryone](https://www.adalovelaceinstitute.org/resource/doteveryone-consequence-scanning/), now published by the Ada Lovelace Institute, for considering the potential consequences of a product or service on people, communities and the planet. It answers three questions:

1. What are the intended and unintended consequences of this product or feature?
2. What are the positive consequences we want to focus on?
3. What are the consequences we want to mitigate?

This skill runs the practice and connects each consequence to the rules in the guidelines, so that the team's concerns are backed by sources and the actions can cite rule IDs.

## Locate the guidelines

The guidelines root is `${CLAUDE_PLUGIN_ROOT}`. If that placeholder wasn't replaced with a path, the root is two directories above this `SKILL.md`. You need `<root>/RULES.md`, and the domain table in `<root>/skills/ethics-review/SKILL.md` to find the domains that apply.

## 0. Choose the mode

- **Solo with the user** (default): you play the role of the participants, and ask the user for what only they know.
- **Facilitation plan**: if the user wants to run the event with a team, produce an agenda following the manual's recommended structure (introduction, quiet time, affinity sorting, a second quiet time, action sorting, dot voting, discussion, end), the prompts from step 2 below to hand out, and the empty log from step 5. Point them to the manual and printable headings on the [Ada Lovelace Institute's page](https://www.adalovelaceinstitute.org/resource/doteveryone-consequence-scanning/).

## 1. Set out the intended consequences

Describe the product or feature in two or three sentences, and list its **intended consequences**: the change it is meant to make, reframed as impact on the world, not only business aims. Ask the user to confirm or correct them.

## 2. Find the unintended consequences

Brainstorm widely before judging. Use the stakeholders (users, people the product decides about, bystanders, workers, communities, future generations, the environment) and these prompts:

- **Misuse**: how could someone use it to harm, harass, deceive or exploit others?
- **Exclusion**: who can't use it, or is treated worse by it: people with disabilities, older people, people in other languages, cultures or income groups?
- **Wellbeing**: could it encourage compulsive use, overspending, anxiety or isolation, especially in children?
- **Data and privacy**: what could the data it collects reveal, and who could get it?
- **Trust and truth**: could it spread false information, or mislead the people who use it?
- **Work**: whose work does it change, replace or make worse?
- **Environment**: what energy, hardware or waste does it create, at scale?
- **Scale and time**: what changes if it is used by millions, or for years?

For each detected domain, skim its key rules in `RULES.md` and ask whether the product could break them; every rule it could break is a candidate unintended consequence. Group similar ideas together.

## 3. Sort into act, influence and monitor

Sort each consequence by how much control the team has:

- **Act**: within the team's control to act upon.
- **Influence**: out of the team's control, but the team can influence the outcome.
- **Monitor**: beyond the team's control, but it could affect the product, so the team should understand it better and watch it.

Mark each consequence in act and influence as positive, negative or both.

## 4. Discuss and decide

Spend most of the time on **act** and **influence**. For each:

- Link it to the rules it bears on: the rule ID, score and source from `RULES.md`. Use the score as a priority hint: a negative consequence that would break a 9–10 rule comes first.
- Decide how to make it more positive than negative: a design change, a safeguard, a test, a policy. Prefer practices from the matching "How to apply" sections.
- If it touches a question listed under "Open questions", say so and present the positions; the team decides, not you.

## 5. Log and assign

Produce the log:

```markdown
## Consequence scan: <product or feature>, <date>

**Intended consequences:** <list>

| # | Consequence | Intended? | Positive / negative | Act / influence / monitor | Rules | Action | Owner | Due |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | <consequence and who it affects> | Unintended | Negative | Act | `AI-7` (8) ([source](…)) | <action> | <name or role> | <date> |

**Positive consequences to focus on:** <list>
**To monitor:** <list, with what signal to watch>
**Next scan:** <when, for example at the next major feature>
```

Offer to save the log in the repository, for example under `docs/consequence-scans/`, and to turn the actions into issues or tasks. Suggest repeating the scan at each major feature or release, as the practice is designed for iterative development.
