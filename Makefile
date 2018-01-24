.PHONY: install

all: paper.html

install:
	Rscript -e 'install.packages("rmarkdown", repos="http://cran.us.r-project.org")'

%.html: %.Rmd
	Rscript -e 'library(rmarkdown)' -e 'render("$<")'
