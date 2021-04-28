# python-lint

<p align="left">
  <a href="https://github.com/ricardochaves/python-lint"><img alt="All lints status" src="https://github.com/ricardochaves/python-lint/workflows/all-lints/badge.svg"></a></p>

## About

This action must be used for aplication the bids:

- [black](https://github.com/psf/black)
- [pylint](https://www.pylint.org/)
- [isort](https://github.com/timothycrosley/isort)
- [pycodestyle](https://pycodestyle.readthedocs.io)
- [flake8](http://flake8.pycqa.org)
- [mypy](http://mypy-lang.org/)

## Usage

See [action.yml](action.yml)

Basic:

```yml
steps:
  - uses: actions/checkout@v1
  - uses: ricardochaves/python-lint@v1.4.0
```

Options:

```yml
steps:
  - uses: actions/checkout@v1
  - uses: ricardochaves/python-lint@v1.4.0
    with:
      python-root-list: "python_alelo tests"
      use-pylint: false
      use-pycodestyle: false
      use-flake8: false
      use-black: false
      use-mypy: false
      use-isort: false
      extra-pylint-options: ""
      extra-pycodestyle-options: ""
      extra-flake8-options: ""
      extra-black-options: ""
      extra-mypy-options: ""
      extra-isort-options: ""
```

Command build logic list:

```bash
pylint $(extra-pylint-options) $(python-root-list)

pycodestyle $(extra-pycodestyle-options) $(python-root-list)

flake8 $(extra-flake8-options) $(python-root-list)

black --check $(extra-black-options) $(python-root-list)

mypy $(extra-mypy-options) $(python-root-list)

isort $(extra-isort-options) $(python-root-list) -c --diff
```

## Versions used

To identify the version used you must consult the [CHANGELOG.md](https://github.com/ricardochaves/python-lint-image/blob/master/CHANGELOG.md) of the image used in our [Dockerfile](https://github.com/ricardochaves/python-lint-image/blob/master/Dockerfile).

## License

The scripts and documentation in this project are released under the [MIT License](LICENSE)

## Contributions

Contributions are welcome! See [CONTRIBUTING.md](CONTRIBUTING.md)
