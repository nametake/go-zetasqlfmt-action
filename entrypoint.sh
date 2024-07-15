#!/bin/sh

path=$1
nosemicolon=$2

if [ "$nosemicolon" = "true" ]; then
	zetasqlfmt -nosemicolon "$path"
	exit 0
fi

zetasqlfmt "$path"
