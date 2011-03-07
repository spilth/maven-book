pandoc -s pragmatic-guide-to-maven.md -o pragmatic-guide-to-maven.html
htmldoc -v --book --size 6x9in --titleimage title.png --linkstyle plain --linkcolor 000099 --toclevels 2 --header " c1" --footer " dT" --bodyfont helvetica -f "pragmatic-guide-to-maven.pdf" pragmatic-guide-to-maven.html
open pragmatic-guide-to-maven.pdf
