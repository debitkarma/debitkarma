#!/usr/bin/bash

uv init $1
cp python.gitignore $1/.gitignore
cd $1
git init .
git config user.name "Debit Karma"
git config user.email "debitkarma@gmail.com"

git add pyproject.toml README.md .python-version .gitignore
git commit -m "initial commit"

gh auth switch -u debitkarma
echo "DON'T FORGET TO EXIT after creating the repo OR CTRL+C'ing!!"
bash --init-file <(echo "gh repo create")
