DOT_FILES = .zshrc .zsh .vimrc .vim .screenrc .gitconfig

all: bootstrap zsh vim screen gitconfig

bootstrap:
	@git submodule update --init

zsh: $(foreach f, $(filter .zsh%, $(DOT_FILES)), link-dot-file-$(f))

vim: $(foreach f, $(filter .vim%, $(DOT_FILES)), link-dot-file-$(f))

screen: $(foreach f, $(filter .screen%, $(DOT_FILES)), link-dot-file-$(f))

gitconfig: $(foreach f, $(filter .gitconfig%, $(DOT_FILES)), link-dot-file-$(f))
  
.PHONY: clean
clean: $(foreach f, $(DOT_FILES), unlink-dot-file-$(f))
  

link-dot-file-%: %
	@echo "Create Symlink $< => $(HOME)/$<"
	@ln -snf $(CURDIR)/$< $(HOME)/$<

unlink-dot-file-%: %
	@echo "Remove Symlink $(HOME)/$<"
	@$(RM) $(HOME)/$<

