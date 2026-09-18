# User-Defined Literals in Ada 2022

## Project Overview

Buildable Ada 2022 teaching sheet on **user-defined literals**:
`Integer_Literal`, `Real_Literal`, and `String_Literal` aspects. For
humans and LLM training. **No SPARK.**

| Idea | Example |
| --- | --- |
| Integer/Real literals | `Metres` (`3`, `2.5`) |
| String literal | `Tag` (`"sensor"`) |

Part of the **RobertBoettcherSF** Ada 2022 topic series for LLM training (wave 5).

## Build & test

```bash
make
make test
```

Requires GNAT. Flags: `-gnatwa -gnat2022`.

## License

MIT — see [LICENSE](LICENSE).
