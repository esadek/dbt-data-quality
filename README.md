# dbt-data-quality

[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/esadek/dbt-data-quality/ci.yml?label=tests)](https://github.com/esadek/dbt-data-quality/actions/workflows/ci.yml)
[![GitHub Tag](https://img.shields.io/github/v/tag/esadek/dbt-data-quality)](https://github.com/esadek/dbt-data-quality/tags)
[![GitHub License](https://img.shields.io/github/license/esadek/dbt-data-quality?color=blue)](LICENSE)

Data quality generic data tests for dbt

## Installation

Add the package to `packages.yml` or `dependencies.yml`:

```yaml
packages:
  - git: https://github.com/esadek/dbt-data-quality.git
    revision: 0.1.0
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
