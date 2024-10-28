#!/bin/bash

# Überprüfen, ob genau zwei Argumente übergeben wurden
if [ "$#" -ne 2 ]; then
    echo "Bitte genau zwei Zahlen als Argumente angeben."
    exit 1
fi

# Zuweisung der Argumente zu Variablen
start=$1
ende=$2

# Überprüfung, ob beide Argumente Zahlen sind
re='^[0-9]+$'
if ! [[ $start =~ $re ]] || ! [[ $ende =~ $re ]]; then
    echo "Beide Argumente müssen ganze Zahlen sein."
    exit 1
fi

# Erstellung des Bereichs (Range)
if [ $start -le $ende ]; then
    for i in $(seq $start $ende); do
        echo -n "$i "
    done
    echo
else
    echo "Die Startzahl muss kleiner oder gleich der Endzahl sein."
fi
