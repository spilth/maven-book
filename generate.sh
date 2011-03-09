#!/bin/bash

FILE="pragmatic-guide-to-maven"
MARKDOWN_FILE="./$FILE.md"
HTML_FILE="./$FILE.html"
PDF_FILE="./$FILE.pdf"

echo "Converting Markdown to HTML..."
pandoc -s $MARKDOWN_FILE -o $HTML_FILE

echo "Converting HTML to PDF..."
htmldoc -v --book --size 6x9in --left 0.5in --right 0.5in --top 0.25in --bottom 0.25in --titleimage title.png --linkstyle plain --linkcolor 000099 --toclevels 2 --header " c1" --footer " dT" --bodyfont helvetica -f $PDF_FILE $HTML_FILE

echo "Markdown Word Count"
wc -w $MARKDOWN_FILE

echo "Opening PDF..."
open $PDF_FILE -g
