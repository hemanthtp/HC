#pandoc - convert markdown to html
pandoc test1.md -f markdown -t html -s -o test1.html

#pandoc - convert markdown to tex
pandoc test1.md -f markdown -t latex -s -o test1.tex

#pandoc - convert markdown to pdf
#Note: to create a PDF, you’ll need to have LaTeX installed.(MiKTeX on Windows)
pandoc test1.md -s -o test1.pdf

#pandoc - convert markdown to latex
pandoc -f markdown -t latex hello.txt