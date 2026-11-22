# Skill evals

Test cases for the plugin's skills, run with [`claude plugin eval`](https://code.claude.com/docs/en/plugin-evals). Each case is a realistic prompt plus graders. Every case runs with the plugin and without it, so the results show what the skills add.

| Case | Checks |
| --- | --- |
| `ask-guidelines-promise` | An everyday question about breaking a promise is answered with real rule IDs (`HON-5` to `HON-7`) and their source, and no invented IDs |
| `ask-tradition-lying` | A question about what Buddhism and Islam teach on lying is answered from the tradition pages, attributed and neutral, with the traditions' own sources and the matching general rule |
| `ethics-review-checkout` | A small web shop with planted deceptive design patterns (a fake countdown and stock count, a pre-ticked paid add-on, a hidden service fee, confirmshaming, a subscription that is hard to cancel) is reviewed, citing `DESIGN` rule IDs |
| `games-review-lootbox` | A small children's game with planted problems (undisclosed loot box odds, a premium currency that hides prices, pressure tactics, open chat with strangers, ad tracking of children) is reviewed, citing `GAME` rule IDs |
| `decision-record-safety` | A whistleblowing dilemma about falsified safety tests is worked through with the six lenses and recorded in `docs/ethics-decisions/0001-*.md`, with downsides, putting customers' safety first |
| `consequence-scan-ai-replies` | An AI feature that answers customer emails is scanned for intended and unintended consequences, sorted into act, influence and monitor, citing `AI` rule IDs |
| `no-trigger-unrelated` | An unrelated coding request doesn't fire any of the plugin's skills |

## Run them

From the repository root:

```bash
claude plugin eval . --scaffold --allow-tools Write Edit
```

- `--scaffold` runs each case's `fixture.sh`, which creates its fixture project.
- `--allow-tools Write Edit` lets the decision record case write its file.
- Add `--runs 1 --ablation none` for a quick, cheaper check while iterating.

Every run is a real model call that counts against your usage. A full run with three runs per case and both arms costs a few dollars at list prices.

In CI, the **Skill evals** workflow runs the suite when started by hand from the Actions tab. It needs an `ANTHROPIC_API_KEY` repository secret.

## Maintenance

- `ask-guidelines-promise/graders/no-invented-ids.md` encodes the valid ID range for `HON`. Update it when rules are added to `general/honesty.md`.
- When a case fails, run it alone with `--case <name> --runs 1 --ablation none --keep-temp` and read the kept trace.
