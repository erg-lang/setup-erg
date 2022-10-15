# setup-erg

## example

```yaml
jobs:
  example:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - uses: Swatinem/rust-cache@v2
    - uses: mtshiba/setup-erg2@v0.24
      with:
        erg-version: 0.5.9
    - name: Run script
      run: |
        echo 'print! "hello, world!"' | erg
```
