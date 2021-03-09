#!/bin/bash
# This shell script counts the occurences of the article 'de' in a text file.
file=$1


count_de () (
	echo 'Amount that de has occured: '
	cat $file | grep -Eo '\w+' | tr '[:upper:]' '[:lower:]' | grep -iw "de" | wc -w
)


count_de
