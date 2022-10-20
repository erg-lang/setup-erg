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
        python-version: '3.10'
    - uses: erg-lang/setup-erg@v1.3
    - name: Run script
      run: |
        echo 'print! "hello, world!"' | erg
```
