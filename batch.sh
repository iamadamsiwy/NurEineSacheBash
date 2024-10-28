#!/bin/bash

# Alle übergebenen Parameter in ein Array lesen
array=("$@")

# Ausgabe aller Array-Elemente
echo "Übergebene Episoden-Elemente:"
for item in "${array[@]}"
do
    echo "Episode: $item"
    ./episode.sh $item
done
