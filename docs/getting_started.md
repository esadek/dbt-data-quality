# Getting Started

## Installation

Add the package to `packages.yml` or `dependencies.yml`:

```yaml
packages:
- git: https://github.com/esadek/dbt-data-quality.git
  revision: 0.1.0
```

Install the package:

```bash
dbt deps
```

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

Run the tests:

```bash
dbt test
```
