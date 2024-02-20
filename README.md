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
    - uses: erg-lang/setup-erg@v3.2
      with:
        build: 'nightly'
    - name: Run script
      run: |
        echo 'print! "hello, world!"' | erg
```
