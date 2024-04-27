help:
	@less Makefile

.configure:
	@sudo apt update
	@sudo apt install -y xl2tpd

journal:
	@sudo journalctl -xeu xl2tpd
status:
	@sudo systemctl status xl2tpd
restart:
	@sudo systemctl restart xl2tpd
stop:
	@sudo systemctl stop xl2tpd
