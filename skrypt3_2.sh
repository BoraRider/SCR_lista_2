#!/bin/bash

maska=$1
czas=$2
nazwa=$3

if [ $# -lt 3 ]
then

echo "Nie podano wszystkich argumentow!"
echo "Wywolaj ./skrypt3_2.sh MASKA CZAS NAZWA"
echo "MASKA: np *.pdf albo dokument* "
echo "CZAS: maksymalna ilosc dni jaka uplynela od modyfikacji plikow"
echo "NAZWA: nazwa archiwum stworzonego ze znalezionych plikow"

else
		tar -zcvf $nazwa $(find . -type f -name "$maska" -mtime -$czas)

fi
