# setup-erg

## example

```yaml
jobs:
  example:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - uses: actions/setup-python@v4
      with:
        python-version: '3.11'
    - uses: erg-lang/setup-erg@v2.1
    - name: Run script
      run: |
        echo 'print! "hello, world!"' | erg
```
