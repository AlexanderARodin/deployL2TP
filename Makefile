help:
	@less Makefile

.configure:
	@sudo apt update
	@sudo apt install -y xl2tpd

replace.configs:
	@sudo cp -vrfb ./rootpath/* /

edit:
	@sudo editor /etc/xl2tpd/xl2tpd.conf
edit.secrets:
	@sudo editor /etc/ppp/options.l2tpd

journal:
	@sudo journalctl -xeu xl2tpd
status:
	@sudo systemctl status xl2tpd
restart:
	@sudo systemctl restart xl2tpd
stop:
	@sudo systemctl stop xl2tpd
