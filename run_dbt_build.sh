#!/bin/bash

# Go to dbt project directory
cd "/Users/macbook/Documents/khmerlogic/data-engineering-db/db_project" || exit 1

echo "=========================================="
echo "Starting dbt build workflow..."
echo "Project: demo_project"
echo "=========================================="
echo

# Run dbt build (models + test + snapshots)
dbt build

echo
echo "=========================================="
echo "dbt build finished."
echo "Exit code: $?"
echo "=========================================="
echo