#!/bin/bash
# This shell script counts the occurences of the article 'de' in a text file.
file=$1


count_de () (
	echo 'Amount that de has occured: '
	cat $file | tr '[:upper:]' '[:lower:]' | grep -Eo '\w+' | grep -iw "de" | wc -w
)


count_de
