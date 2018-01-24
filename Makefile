.PHONY: install

all: paper.html

install:
	@R -q --no-save < install.r

%.html: %.Rmd render.r
	@R -q --no-save < render.r
