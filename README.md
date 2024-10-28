Diese Bash Shell Skripte automatisieren den NurEineSache MP3 Whisper Workflow.

Beispiele:
$ whisper NurEineSache_e04.wav --model small -o ./txt/ -f txt --verbose False
$ ./episode.sh 06
$ ./batch.sh $(./range.sh 10 15)
$ ./batch.sh $(./range.sh 16 25)
$ ./mp3batch.sh 02 03 04 05 06 07 08 09
$ ./mp3batch.sh $(./range.sh 10 25)
