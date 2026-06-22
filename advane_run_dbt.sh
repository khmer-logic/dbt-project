#!/bin/bash

# Go to dbt project directory
cd "/Users/macbook/Documents/khmerlogic/data-engineering-db/db_project" || exit 1

# Create logs folder if it doesn't exist
mkdir -p logs

# Generate timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Log file name
LOGFILE="logs/dbt_build_${TIMESTAMP}.log"

echo "Writing output to $LOGFILE"

{
    echo "======================================="
    echo "dbt build run - $(date)"
    echo "======================================="
    echo

    dbt build

} > "$LOGFILE" 2>&1

EXIT_CODE=$?

echo
echo "======================================="
echo "dbt build finished."
echo "Log file: $LOGFILE"
echo "Exit code: $EXIT_CODE"
echo "======================================="