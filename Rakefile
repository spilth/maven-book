require 'rdiscount'
require 'htmldoc'

task :default => :generate_pdf

task :generate_html do
  puts "Generating HTML from Markdown..."
  file = File.open("src/pragmatic-guide-to-maven.md", "rb")
  contents = file.read
  file.close

  markdown = RDiscount.new(contents)

  file = File.open("target/pragmatic-guide-to-maven.html", "w")
  file.write(markdown.to_html)
  file.close
  puts "HTML Generated!"
end

task :generate_pdf => :generate_html do
  #htmldoc -v --book --size 6x9in --left 0.5in --right 0.5in --top 0.25in --bottom 0.25in --titleimage $TITLE_FILE --linkstyle plain --linkcolor 000099 --toclevels 2 --header " c1" --footer " dT" --bodyfont helvetica -f $PDF_FILE $HTML_FILE

  puts "Gererating PDF from HTML..."
  pdf = PDF::HTMLDoc.new

  pdf.set_option :outfile, "target/pragmatic-guide-to-maven.pdf"
  pdf.set_option :titleimage, "src/title.png"
  pdf.set_option :size, "6x9in"
  pdf.set_option :left, "0.5in"
  pdf.set_option :right, "0.5in"
  #pdf.set_option :top, "0.25in"
  pdf.set_option :bottom, "0.25in"
  pdf.set_option :linkstyle, "plain"
  pdf.set_option :linkcolor, "000099"
  pdf.set_option :toclevels, 2
  pdf.header " c1"
  pdf.footer " dT"
  pdf.set_option :bodyfont, "helvetica"

  pdf << "target/pragmatic-guide-to-maven.html"
  pdf.generate
  puts "PDF Generated!"
end

