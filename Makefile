
help:
	@echo 'there is no tips (yet)'

pull:
	@git pull

aptupgrade:
	@apt update && apt upgrade

pre-install:
	@apt install -y neovim tmux zsh mc tree

xl2tp-install:
	@apt install -y xl2tpd

xl2tp-replace-configs:
	@cp -vrf ./rootpath/* /

net-route-configure:
	@iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
	@echo 1 > /proc/sys/net/ipv4/ip_forward
	@echo "uncomment <net.ipv4.ip_forward=1> in /etc/sysctl.conf"
