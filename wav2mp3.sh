#!/bin/bash

# Dieses Skript nimmt einen Übergabeparameter entgegen und verwendet ihn.

# Der Parameter wird in der Variable $1 gespeichert.
param="$1"

# Überprüfe, ob ein Parameter übergeben wurde
if [[ -z "$param" ]]; then
    echo "Bitte geben Sie einen Parameter an."
    exit 1
fi

# Führe eine Aktion mit dem Parameter aus, z. B. eine Ausgabe
echo "Der übergebene Parameter ist: $param"

# Hier könnten weitere Befehle stehen, die $param verwenden
ffmpeg -i NurEineSache_e$param.wav -codec:a libmp3lame -qscale:a 2 ./mp3/NurEineSache_e$param.mp3
