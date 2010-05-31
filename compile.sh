#!/bin/bash

if [ "$1" = "run" ]; then
	echo "run only"
	java  Main src.txt
else
	echo "compile and run"
	jflex scanner.jflex
	java  java_cup.Main parser.cup
	javac *.java
	java  Main src.txt
fi
