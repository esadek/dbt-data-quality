[working-directory("integration_tests")]
test:
    uv run dbt deps
    uv run dbt seed
    uv run dbt test

docs:
    uv run mkdocs serve

clean:
    rm -rf .venv
    rm -rf integration_tests/target
    rm -rf integration_tests/logs
    rm -rf integration_tests/dbt_packages
    rm -rf integration_tests/package-lock.yml
    rm -rf integration_tests/.user.yml
    rm -rf integration_tests/dev.duckdb
