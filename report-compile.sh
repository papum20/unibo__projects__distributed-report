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

rm -f distributed-systems-final-report.pdf \
      distributed-systems-final-report.aux \
      distributed-systems-final-report.bbl \
      distributed-systems-final-report.blg \
      distributed-systems-final-report.out \
      distributed-systems-final-report.log \
      *.aux *.bbl *.blg

pdflatex distributed-systems-final-report.tex
bibtex distributed-systems-final-report
pdflatex distributed-systems-final-report.tex
pdflatex distributed-systems-final-report.tex