.PHONY : clean

all : slides/intro-to-git.pdf

slides/intro-to-git.pdf : slides/intro-to-git.tex slides/overview.tex eglog.log egdiff
	latexmk $< --pdf --outdir=slides --shell-escape

eglog.log egdiff : make-eg-git-log.sh
	./make-eg-git-log.sh
	git --git-dir=git-example-log/.git lg3 > eglog.log
	git --git-dir=git-example-log/.git diff HEAD~4 HEAD~2 > egdiff

clean :
	latexmk -C slides/intro-to-git.tex --outdir=slides
