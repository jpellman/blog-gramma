#!/bin/bash

for DOC in $(git diff --name-only HEAD HEAD~1 | grep 'md$'); do
	if [ -f ${DOC} ]; then
		echo ${DOC}:
		gramma check -m -l en-US -p ${DOC}
		echo
	fi
done
exit 0
