TYPE = bhyve
SERVICE = bsd
REGGAE_PATH := /usr/local/share/reggae
EXTRA_SCRIPT = ${PWD}/templates/reggae-prepare.sh


post_setup:
	@${MAKE} ${MAKEFLAGS} init ${ip}
	@sudo env IP=${ip} reggae scp provision ${SERVICE} ${PWD}/templates/make.conf
	@sudo env IP=${ip} reggae ssh provision ${SERVICE} sudo cp /home/provision/make.conf /etc


.include <${REGGAE_PATH}/mk/service.mk>
