---
name: ask-guidelines
description: Answer questions about what the Moral Guidelines say, such as what is right in a situation, which rule applies, what a profession's code of ethics requires, what a religious or philosophical tradition teaches, or which practice helps. Covers general morality and ethics (moral theories, ethical reasoning, responsibility, honesty, harm and care, respect and consent, fairness, human rights, character, relationships, environment, animals), applied ethics for software, AI, data, design, games, security research, business, marketing, the workplace, research, healthcare, journalism, public service and online life, and the moral teachings of Judaism, Christianity, Islam, the Bahá'í Faith, Hinduism, Buddhism, Jainism, Sikhism, Confucianism, Daoism and humanism. Use for ethics, values or "is it OK to…?" questions that don't need a full review.
argument-hint: "[question]"
---

# Ask the guidelines

Answer the question from the guidelines, not from memory. Every recommendation you give must trace back to a rule or reference in the guideline files.

## Locate the guidelines

The guidelines root is `${CLAUDE_PLUGIN_ROOT}`. If that placeholder wasn't replaced with a path, the root is two directories above this `SKILL.md`. Useful entry points:

- `<root>/RULES.md`: every rule with its ID, score, level, main source and the practices that support it
- `<root>/general/README.md`, `<root>/specific/README.md` and `<root>/traditions/README.md`: indexes of the guideline files and tradition pages
- `<root>/checklists/<area>.md`: all rules for one area, sorted by level

## 1. Find the relevant rules

1. Work out the domain (if any), the topic, such as honesty, consent or conflicts of interest, and whether the person asks about a tradition.
2. Start with `RULES.md`: it lists every rule by ID and file in one place, with its main source. Search it for the topic's terms (for example `promise`), or read it if searching isn't available. Try synonyms if the first search finds nothing.
3. Read the matching section of each guideline file, including its "Adopted references", "How to apply" and "Open questions" entries.
4. If the person asks what a tradition teaches, or says which tradition they follow, read its page in `traditions/` and use its "Core moral teachings" table, which maps teachings to rule IDs.

General rules state a principle, and domain rules give the field's specifics and name the general rule they apply. When both apply, cite both: the domain rule for what to do, and the general rule for why.

## 2. Answer

Lead with a direct answer in two or three sentences. Then list the supporting rules, highest score first:

```markdown
- `HON-5` (9, fundamental) **Keep your promises and agreements.** Source: [Stanford Encyclopedia of Philosophy, Promises](https://plato.stanford.edu/entries/promises/)
```

Then, where they exist:

- **Traditions**: if relevant or asked, what the traditions teach, attributed to each ("In the Analects, Confucius…"), with the source link from the tradition page. Never present one tradition as the answer for everyone.
- **Read next**: the one or two highest-scored adopted references for the topic.
- **Put it into practice**: practices from the "How to apply" section that support these rules.

Copy rule IDs, scores and links exactly from the files. Use the score to say how firmly to follow a rule: 9–10 fundamental, 6–8 recommended, 1–5 situational.

## 3. Open and uncovered questions

- **If the question is listed under "Open questions"**, say that thoughtful people and traditions disagree, set out the main positions fairly with the listed source, and don't pick a side. Offer the `ethical-decision-record` skill if the person has to decide.
- **If no guideline covers it**, say so plainly. You may add general thoughts, but label them as your own opinion and don't attach rule IDs to them. Suggest adding a guideline (maintainers can use the `add-guideline` skill in the guidelines repository).
- **If the question needs a professional**, such as a lawyer, doctor, financial adviser or religious authority, say so: the guidelines are moral guidance, not legal, medical, financial or religious advice.
- **If someone may be in danger**, put their safety first: point them to emergency services or a relevant helpline before anything else.
