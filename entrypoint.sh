#!/bin/bash

GRAMMAOUT=""
for DOC in $(git diff --name-only HEAD HEAD~1 | grep 'md$'); do
	if [ -f ${DOC} ]; then
		GRAMMAOUT="${GRAMMAOUT}\n$(gramma check -m -l en-US -d typos -p ${DOC})"
	fi
done
echo "::set-output name=grammaOut::$GRAMMAOUT"
