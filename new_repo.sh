#!/usr/bin/bash

uv init $0
cp python.gitignore $0/.gitignore
cd $0
git init .
git config user.name "Debit Karma"
git config user.email "debitkarma@gmail.com"

git add pyproject.toml README.md .python-version .gitignore
git commit -m "initial commit"
