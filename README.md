# Distributed Systems Final Report

Project's final report for the Distributed Systems course at University of Bologna 2025/2026. A simulation of a **Distributed Cyber-Physical System (CPS)** managing a "Smart Roundabout".


### Latex compilation
There is a GitHub Action that compiles the LaTeX files in the repository and creates a PDF file.
The PDF file is then uploaded as an artifact of the action.
The action is triggered on every push to the repository on specific branches (see `.github/workflows/compile.yml`).

In the action, there is also a step that improves the bibliographic references in the LaTeX files (in  the script `scripts/bibtex_prettifier.rb`).

Locally, you can use the bash script:
```bash
./report-compile.sh
```
