# dbt-data-quality

[![GitHub License](https://img.shields.io/github/license/esadek/dbt-data-quality)](LICENSE)

Data quality generic data tests for dbt

## Installation

Add the package to `packages.yml` or `dependencies.yml`:

```yaml
packages:
  - git: https://github.com/esadek/dbt-data-quality.git
    revision: main
```

Then run `dbt deps` to install the package.

## Usage

Add tests in the `data_tests` property:

```yaml
version: 2

models:
  - name: users
    columns:
      - name: age
        data_tests:
          - dbt_data_quality.positive
```
