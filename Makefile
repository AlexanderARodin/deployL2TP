
help:
	@echo 'there is no tips (yet)'

aptupgrade:
	@apt update && apt upgrade

pre-install:
	@apt install -y neovim tmux zsh mc tree

xl2tp-install:
	@apt install -y xl2tpd

xl2tp-replace-configs:
	@cp -vrf ./rootpath/* /
