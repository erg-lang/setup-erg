# setup-erg

## example

```yaml
jobs:
  example:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - uses: erg-lang/setup-erg@v1
      with:
        erg-version: 0.5.9
    - name: Run script
      run: |
        echo 'print! "hello, world!"' | erg
```
