#!/bin/sh

workingDir=$1
path=$2
nosemicolon=$3

cd "$workingDir" || exit

pwd

ls

echo "$nosemicolon"

if [ "$nosemicolon" = "true" ]; then
	zetasqlfmt -nosemicolon "$path"
	exit 0
fi

zetasqlfmt "$path"
