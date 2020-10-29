#!/bin/bash

adresy="adresy.txt"
pdfy=$(find . -type f -name "spec*.pdf")

licznik=1
wartosc_do_sed=$licznik

while IFS= read -r gosc
do

wartosc_do_sed=$licznik
wartosc_do_sed+="q;d"
tresc=$(sed $wartosc_do_sed tresc.txt)

echo $tresc | mutt -s "Temat" -a $pdfy -- $gosc

licznik=$((licznik+1))

done < "$adresy"

