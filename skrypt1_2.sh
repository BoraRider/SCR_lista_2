#!/bin/bash
LC_ALL=C
zmienna=$(date +%u)

if [ $zmienna -lt 6 ]
then
	echo "Dzis " $zmienna "dzien tygodnia czyli dzien roboczy"
else
	echo "Dzis " $zmienna "dzien tygodnina czyli weekend"
fi
