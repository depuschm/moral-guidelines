---
name: ethical-decision-record
description: Help a person or team work through a moral dilemma or a decision with ethical stakes, step by step, using the six ethical lenses of the Markkula Center's framework (rights, justice, utilitarian, common good, virtue, care) and the Moral Guidelines' rules, and record the decision with its stakeholders, options, reasons and downsides in an ethical decision record. Also handles revisiting an earlier decision. Use when someone asks "what should I do?", faces a hard choice, wants to think a dilemma through, or wants to document an ethical decision for a team.
argument-hint: "[the decision or dilemma]"
---

# Ethical decision record

Help the person reach their own well-reasoned decision, and record it. You guide the reasoning; the decision is theirs. Follow [general/reasoning.md](../../general/reasoning.md), which this skill turns into steps, and the decision-making framework it adopts: the Markkula Center's [A Framework for Ethical Decision Making](https://www.scu.edu/ethics/ethics-resources/a-framework-for-ethical-decision-making/).

## Locate the guidelines

The guidelines root is `${CLAUDE_PLUGIN_ROOT}`. If that placeholder wasn't replaced with a path, the root is two directories above this `SKILL.md`. Use `<root>/RULES.md` to find the rules that apply, and `<root>/traditions/` if the person says which tradition they follow.

## First: safety

If the dilemma involves a risk of serious harm to the person or someone else, such as abuse, self-harm or a crime in progress, put safety first: point to emergency services or a relevant helpline, and don't turn it into a reasoning exercise.

## 1. Identify the ethical issue

Ask, or work out from the conversation:

- Could the decision damage someone, or benefit some people unevenly?
- Is it a choice between good and bad, or between two goods or two bads?
- Is it about more than what is legal or most efficient?

State the decision as one question, for example "Should I tell my manager that a colleague falsified test results?"

## 2. Get the facts

- What is known, and what isn't? Can more be learned before deciding, and how?
- Who has a stake in the outcome? List each stakeholder and what they stand to gain or lose. Mark vulnerable people.
- What are the options? Look for creative ones beyond the first two that come to mind, and check whether the people affected have been consulted.

Ask the person for missing facts. Don't invent them; record unknowns as unknowns.

## 3. Find the rules that apply

Search `RULES.md` for the rules that bear on the decision, and read them in their files. Note:

- **Fundamental rules (9–10)** that an option would break. An option that breaks an absolute prohibition, such as torture or slavery, is off the table, and you should say so.
- **Recommended rules (6–8)** that pull in different directions. Many dilemmas are conflicts between rules, such as honesty against kindness, or loyalty against fairness.
- **Open questions** the decision touches. Present the positions; don't settle them for the person.
- **Traditions**: if the person follows a tradition, what its page says about the question, attributed to the tradition.

## 4. Evaluate the options through the six lenses

For each option, ask the framework's questions:

| Lens | Question |
| --- | --- |
| Rights | Which option best respects the rights of all who have a stake? |
| Justice | Which option treats people fairly, giving each what they are due? |
| Utilitarian | Which option produces the most good and does the least harm for as many stakeholders as possible? |
| Common good | Which option best serves the community as a whole, not just some members? |
| Virtue | Which option leads me to act as the sort of person I want to be? |
| Care ethics | Which option takes appropriate account of the relationships, concerns and feelings of all stakeholders? |

Where the lenses agree, say so: that is a strong signal. Where they disagree, make the trade-off explicit rather than hiding it.

Also check the person's reasoning for the biases and rationalisations listed in `general/reasoning.md`, such as "everybody does it" or "it's not my responsibility", and name them gently if you see them.

## 5. Choose and test

- Which option best addresses the situation after all the lenses?
- **Test it**: if the person told someone they respect, or a public audience, which option they chose, what would that person say?
- How can the decision be carried out with the most care for the stakeholders, for example by explaining it to those who lose out, or by reducing the harm it does?

If the person asks for your view, give it with reasons, clearly labelled as your view, and show how a reasonable person could decide differently.

## 6. Record the decision

If the person or team wants a record (always offer one for decisions made in an organisation):

1. **Find the existing convention.** Look for existing decision records in `docs/ethics-decisions/`, `docs/decisions/` or the directory the person names. If records exist, follow their format, numbering and status values.
2. **If none exist**, create `docs/ethics-decisions/` and use [template.md](template.md).
3. **Number and name**: highest existing number + 1, zero-padded to four digits, then a lower-case, hyphenated title: `0001-disclose-falsified-test-results.md`.
4. Fill in every section from the steps above. Copy rule IDs and source links exactly from the guideline files. Leave the "Decision" section's status as `proposed` until the person confirms the decision.
5. **Revisiting** an earlier decision: add a new record that links to the old one, and set the old record's status to `superseded by NNNN`. Don't rewrite history.

For a personal decision, offer to write the record as a private note instead of a repository file.

## 7. Reflect afterwards

Suggest a review date. At that point, ask: how did the decision turn out, what did we learn, and would we decide the same way again? Record the answers in the "Review" section.
