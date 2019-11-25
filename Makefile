.PHONY : clean

all : slides/intro-to-git.pdf

slides/intro-to-git.pdf : slides/intro-to-git.tex slides/overview.tex
	latexmk $< --pdf --outdir=slides

clean :
	git clean -f
