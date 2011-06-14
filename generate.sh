#!/bin/bash

FILE="pragmatic-guide-to-maven"

CURRENT_DIR=`pwd`
SOURCE_DIR="$CURRENT_DIR/src"
TARGET_DIR="$CURRENT_DIR/target"

MARKDOWN_FILE="$SOURCE_DIR/$FILE.md"
TITLE_FILE="$SOURCE_DIR/title.png"

HTML_FILE="$TARGET_DIRg/$FILE.html"
PDF_FILE="$TARGET_DIR/$FILE.pdf"

mkdir $TARGET_DIR

echo "Converting Markdown to HTML..."
pandoc -s $MARKDOWN_FILE -o $HTML_FILE

echo "Converting HTML to PDF..."
htmldoc -v --book --size 6x9in --left 0.5in --right 0.5in --top 0.25in --bottom 0.25in --titleimage $TITLE_FILE --linkstyle plain --linkcolor 000099 --toclevels 2 --header " c1" --footer " dT" --bodyfont helvetica -f $PDF_FILE $HTML_FILE

echo "Markdown Word Count"
wc -w $MARKDOWN_FILE

echo "Opening PDF..."
open $PDF_FILE -g
