#!/bin/bash

maska=""
czas=""
nazwa=""

while getopts n:a:m:b flaga
do
    case "${flaga}" in
        a) nazwa=${OPTARG};;
        m) maska=${OPTARG};;
        n) czas=${OPTARG};;
    esac
done

if [ "$MASKA" != "" ]
then

	$maska = $MASKA
	
fi
if [ "$CZAS" != "" ]
then

	$czas = $CZAS
	
fi
if [ "$NAZWA" != "" ]
then

	$nazwa = $NAZWA
	
fi


if [ "$maska" = "" ]
then
    echo 'Podaj maske (np. *.pdf)'
    read maska
fi

if [ "$nazwa" = "" ]
then
    echo 'Podaj nazwe tworzonego archiwum'
    read nazwa
fi

if [ "$czas" = "" ]
then
        tar -zcvf $nazwa $(find . -type f -name "$maska")

else
		tar -zcvf $nazwa $(find . -type f -name "$maska" -mtime -$czas)

fi
