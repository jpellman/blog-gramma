#!/bin/bash

for DOC in $(git diff --name-only HEAD HEAD~1 | grep 'md$'); do
	if [ -f ${DOC} ]; then
		gramma check -m -l en-US -d typos -p ${DOC}
		echo foo
	fi
done
