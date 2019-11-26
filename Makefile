.PHONY : clean

all : slides/intro-to-git.pdf

slides/intro-to-git.pdf : slides/intro-to-git.tex slides/overview.tex slides/acquiring-git.tex eglog.log egdiff
	latexmk $< --pdf --outdir=slides --shell-escape

eglog.log egdiff : make-eg-git-log.sh
	./make-eg-git-log.sh
	git --git-dir=git-example-log/.git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all > eglog.log
	git --git-dir=git-example-log/.git diff HEAD~4 HEAD~2 > egdiff

clean :
	latexmk -c slides/intro-to-git.tex --outdir=slides
	$(RM) slides/intro-to-git.nav
	$(RM) slides/intro-to-git.snm
	$(RM) slides/intro-to-git.vrb

