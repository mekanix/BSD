BASE_URL = https://github.com/mekanix/bhyve-base/releases/download/0.0.1
IMAGE = basefreebsd13
TYPE = bhyve
SERVICE = bsd
REGGAE_PATH := /usr/local/share/reggae

.if exists(provisioners.mk)
.include <provisioners.mk>
.endif
.include <${REGGAE_PATH}/mk/service.mk>
