#!/bin/sh
set -e
set -u

if [ $# -ne 0 ]
  then
	if [ "$1" = "everything" ]; then
		echo "Removing node_modules"
    find . -name node_modules -print0 | xargs -0 rm -fr
    find . -name pnpm-lock.yaml -print0 | xargs -0 rm -fr
	fi
fi

echo "Removing build files"
find . -name .angular -print0 | xargs -0 rm -fr
find . -name dist -print0 | xargs -0 rm -fr
