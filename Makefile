.PHONY: install check

all: paper.html check

install:
	Rscript -e 'install.packages("rmarkdown", repos="http://cran.us.r-project.org")'

check:
	./weasel *.Rmd

%.html: %.Rmd
	Rscript -e 'library(rmarkdown)' -e 'render("$<")'
