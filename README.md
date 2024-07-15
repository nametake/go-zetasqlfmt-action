# go-zetasqlfmt-action

go-zetasqlfmt-action is a GitHub Actions for [go-zetasqlfmt](https://github.com/nametake/go-zetasqlfmt).

## Usage

```yaml
name: Go
on:
  push
jobs:
  zetasqlfmt:
    name: zetasqlfmt
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: nametake/go-zetasqlfmt-action@main
        with:
          path: ./spanner/... # Target directory path. required.
          nosemicolon: true   # Whether to include semicolons in the formatted SQL
      - run: git diff
```
