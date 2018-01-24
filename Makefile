.PHONY: install

all: paper.html

install:
	@Rscript install.r

%.html: %.Rmd render.r
	@Rscript render.r
