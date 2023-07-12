
help:
	@echo 'there is no tips (yet)'

aptupgrade:
	@apt update && apt upgrade

pre-install:
	@apt install -y neovim tmux zsh mc tree

install:
	@apt install -y pptpd

