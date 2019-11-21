all : slides/intro-to-git.pdf

slides/intro-to-git.pdf : slides/intro-to-git.tex
	latexmk $< --pdf --outdir=slides
