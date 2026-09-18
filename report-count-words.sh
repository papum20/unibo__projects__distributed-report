#!/bin/bash

# Find the report file and enter its containing directory
REPORT_FILE=$(find . -type f -name "distributed-systems-final-report.tex" -print -quit)

if [ -n "$REPORT_FILE" ]; then
    REPORT_DIR=$(dirname "$REPORT_FILE")
    REPORT_DIR_ABS=$(cd "$REPORT_DIR" && pwd)
else
    echo "Error: Could not find distributed-systems-final-report.tex"
    exit 1
fi


cd "$REPORT_DIR_ABS"

texcount -inc distributed-systems-final-report.tex