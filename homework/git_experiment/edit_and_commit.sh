#!/usr/bin/env bash

for commit_count in {2..100}
do
  let linenum="10+$commit_count"
  sed -i "$linenum i This is a new sentence." foo.tex
  pdflatex foo.tex
  git add -u
  git commit -m "add $commit_count -th sentence"
done
