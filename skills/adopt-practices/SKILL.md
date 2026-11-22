---
name: adopt-practices
description: Put the Moral Guidelines into practice in a team, project or organisation. Detects the project's domains, picks the practices, templates and tools that the guidelines' "How to apply" sections name (for example a code of conduct, an ethics checklist in pull request or design review templates, model cards, a vulnerability disclosure policy, consequence scanning at each release, a speak-up channel), and adds them to the project, each labelled with the rule IDs it supports. Use when asked to make a team or project more ethical, add ethics checks to the development process, set up responsible AI documentation, or "make our process follow the guidelines".
argument-hint: "[path] [--plan-only]"
---

# Adopt practices

Turn the guidelines into everyday practice in the target project or team. Only use practices that the guidelines name. Every practice you add must say which rules it supports.

## Locate the guidelines

The guidelines root is `${CLAUDE_PLUGIN_ROOT}`. If that placeholder wasn't replaced with a path (the skill isn't running as a plugin), the root is two directories above this `SKILL.md` file. You need:

- `<root>/RULES.md`: every rule with its score and a **Supported by** column, which lists the practices that support it.
- `<root>/general/` and `<root>/specific/<domain>/`: the **How to apply** section of each file explains each practice, and which rule IDs it supports.
- `<root>/skills/ethics-review/SKILL.md`, section "Detect domains": the table of signals that identify each domain.
- `<root>/checklists/<area>.md`: the rules of each area as a checklist.

## 1. Detect domains and existing practices

1. Find the domains with the detection table. A project often matches several, for example software, AI and data.
2. Inventory what the project already has: `CODE_OF_CONDUCT.md`, `SECURITY.md`, `CONTRIBUTING.md`, pull request and issue templates (`.github/`), design review or definition-of-done documents, model or data cards, privacy notices, accessibility statements, decision records, and any ethics or responsible-AI policy. Extend what exists rather than adding a parallel process.

## 2. Plan

1. For each detected domain, plus `general/reasoning.md` and `general/responsibility.md`, read the **How to apply** section. Collect each practice with the rule IDs it supports, and look up each rule's score in `RULES.md`.
2. Choose the set to add:
   - Prefer, in this order: extending a document or template the project already uses (for example adding questions to the pull request template), adding a lightweight template, then adding a new recurring practice such as a consequence-scanning session.
   - Rank by the highest rule score each practice supports. Skip practices that only support low-scored (1–5) rules unless they cost almost nothing.
   - Keep it small: two to five practices that the team will actually use beat a long list they won't.
3. If the user passed `--plan-only`, or the changes touch policies that others own (HR, legal, security), present the plan and stop. Otherwise show the plan briefly and continue.

## 3. Add the practices

- Use the practice's own template or format where the guidelines link one (for example the Contributor Covenant for a code of conduct, or the model card format for AI models). Adapt it to the project, and keep its attribution and license notice.
- Label each addition with the rules it supports, in a comment or a short line, for example `<!-- Supports AI-3 and DATA-2 (moral-guidelines) -->`, or a "Why" line in a checklist item.
- For checklists in pull request or design review templates, take the items from `checklists/<area>.md`, keep only the rules that apply to the project, and keep their IDs so reviewers can look them up.
- Don't write legal policies (such as a privacy policy or an employment contract) as if they were final: draft them as starting points and say that they need review by the people responsible, and by a lawyer where the law applies.

## 4. Report

```markdown
## Practices adopted: <project>

**Domains:** <detected> · **Already in place:** <existing practices>

| Practice | Where | Supports | Why this one |
| --- | --- | --- | --- |
| <Practice> | `.github/pull_request_template.md` | `DESIGN-1` (8), `HON-2` (8) | <reason> |

### Not adopted
- <Practice>: <why not now, for example covered by an existing process, or only supports low-scored rules>

### Needs someone else's decision
- <Policy or change that HR, legal, security or leadership must own>
```
