#!/bin/bash

DIR=$1


function h1 {
	echo ${FUNCNAME[0]}
	cat $DIR | grep -Eo '\w+' | grep -i -w "de" | wc -w
}


h1
