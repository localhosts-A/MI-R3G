include ../common.mak

#export SC_BUILD=y
all: versioncmp base64_encode resolveip

versioncmp:
	$(CC) versioncmp.c -o versioncmp
	$(STRIP) versioncmp
base64_encode:
	$(CC) base64.c -o base64_encode
	$(STRIP) base64_encode
resolveip:
	$(CC) resolveip.c -o resolveip
	$(STRIP) resolveip

install:
	install -d $(INSTALLDIR)/usr/sbin
	install -d $(INSTALLDIR)/lib
	install -d $(INSTALLDIR)/usr/bin
	install -d $(INSTALLDIR)/usr/share
	install -d $(INSTALLDIR)/usr/lib
ifeq ($(SWRT_NAME), $(filter $(SWRT_NAME), K3))
	install -d $(INSTALLDIR)/mcu
endif
	install -d $(INSTALLDIR)/rom/etc
ifeq ($(HND_ROUTER), y)
	install -d $(INSTALLDIR)/www/www
	install -d $(INSTALLDIR)/www/www/js
	install -d $(INSTALLDIR)/www/www/res
else
	install -d $(INSTALLDIR)/www
	install -d $(INSTALLDIR)/www/js
	install -d $(INSTALLDIR)/www/res
endif
	install -d $(INSTALLDIR)/rom/etc/softcenter
	install -d $(INSTALLDIR)/rom/etc/softcenter/bin
	install -d $(INSTALLDIR)/rom/etc/softcenter/res
	install -d $(INSTALLDIR)/rom/etc/softcenter/res/layer
	install -d $(INSTALLDIR)/rom/etc/softcenter/res/layer/mobile
	install -d $(INSTALLDIR)/rom/etc/softcenter/res/layer/mobile/need
	install -d $(INSTALLDIR)/rom/etc/softcenter/res/layer/theme
	install -d $(INSTALLDIR)/rom/etc/softcenter/res/layer/theme/default
	install -d $(INSTALLDIR)/rom/etc/softcenter/webs
	install -d $(INSTALLDIR)/rom/etc/softcenter/perp
	install -d $(INSTALLDIR)/rom/etc/softcenter/scripts
	install -d $(INSTALLDIR)/rom/etc/softcenter/ROG/res
# softcenter
	install -m 0755 versioncmp $(INSTALLDIR)/usr/sbin
	install -m 0755 base64_encode $(INSTALLDIR)/usr/sbin
	install -m 0755 resolveip $(INSTALLDIR)/usr/sbin
	install -m 0755 softcenter/automount.sh $(INSTALLDIR)/rom/etc/softcenter
	install -m 0755 softcenter/bin/jq $(INSTALLDIR)/rom/etc/softcenter/bin
	install -m 0755 softcenter/bin/sc_auth $(INSTALLDIR)/rom/etc/softcenter/bin
	install -m 0755 softcenter/bin/softcenter.sh $(INSTALLDIR)/rom/etc/softcenter/bin
	install -m 0755 softcenter/bin/softcenter-mount.sh $(INSTALLDIR)/rom/etc/softcenter/bin
	install -m 0755 softcenter/bin/softcenter-net.sh $(INSTALLDIR)/rom/etc/softcenter/bin
	install -m 0755 softcenter/bin/softcenter-wan.sh $(INSTALLDIR)/rom/etc/softcenter/bin
	install -m 0755 softcenter/bin/softcenter-services.sh $(INSTALLDIR)/rom/etc/softcenter/bin
	install -m 0755 softcenter/bin/softcenter-unmount.sh $(INSTALLDIR)/rom/etc/softcenter/bin
	install -m 0755 softcenter/res/sc1CN.json $(INSTALLDIR)/rom/etc/softcenter/res
	install -m 0755 softcenter/res/sc1EN.json $(INSTALLDIR)/rom/etc/softcenter/res
	install -m 0755 softcenter/res/sc1TW.json $(INSTALLDIR)/rom/etc/softcenter/res
	install -m 0755 softcenter/res/icon-default.png $(INSTALLDIR)/rom/etc/softcenter/res
	install -m 0755 softcenter/res/swrt.png $(INSTALLDIR)/rom/etc/softcenter/res
	install -m 0755 softcenter/res/upgrade.png $(INSTALLDIR)/rom/etc/softcenter/res
	install -m 0755 softcenter/res/softcenter.js $(INSTALLDIR)/rom/etc/softcenter/res
	install -m 0755 softcenter/res/softcenter.css $(INSTALLDIR)/rom/etc/softcenter/res
	install -m 0755 softcenter/res/proceding.gif $(INSTALLDIR)/rom/etc/softcenter/res
	install -m 0755 softcenter/res/layer/layer.js $(INSTALLDIR)/rom/etc/softcenter/res/layer
	install -m 0755 softcenter/res/layer/mobile/layer.js $(INSTALLDIR)/rom/etc/softcenter/res/layer/mobile
	install -m 0755 softcenter/res/layer/mobile/need/layer.css $(INSTALLDIR)/rom/etc/softcenter/res/layer/mobile/need
	install -m 0755 softcenter/res/layer/theme/default/icon.png $(INSTALLDIR)/rom/etc/softcenter/res/layer/theme/default
	install -m 0755 softcenter/res/layer/theme/default/icon-ext.png $(INSTALLDIR)/rom/etc/softcenter/res/layer/theme/default
	install -m 0755 softcenter/res/layer/theme/default/layer.css $(INSTALLDIR)/rom/etc/softcenter/res/layer/theme/default
	install -m 0755 softcenter/res/layer/theme/default/loading-0.gif $(INSTALLDIR)/rom/etc/softcenter/res/layer/theme/default
	install -m 0755 softcenter/res/layer/theme/default/loading-1.gif $(INSTALLDIR)/rom/etc/softcenter/res/layer/theme/default
	install -m 0755 softcenter/res/layer/theme/default/loading-2.gif $(INSTALLDIR)/rom/etc/softcenter/res/layer/theme/default
	install -m 0755 softcenter/webs/Main_Soft_center.asp $(INSTALLDIR)/rom/etc/softcenter/webs
	install -m 0755 softcenter/webs/Main_Soft_setting.asp $(INSTALLDIR)/rom/etc/softcenter/webs
	install -m 0755 softcenter/scripts/base.sh $(INSTALLDIR)/rom/etc/softcenter/scripts
	install -m 0755 softcenter/scripts/dummy_script.sh $(INSTALLDIR)/rom/etc/softcenter/scripts
	install -m 0755 softcenter/scripts/ks_app_install.sh $(INSTALLDIR)/rom/etc/softcenter/scripts
	install -m 0755 softcenter/scripts/ks_tar_install.sh $(INSTALLDIR)/rom/etc/softcenter/scripts
	#install -m 0755 softcenter/scripts/pluginbase.sh $(INSTALLDIR)/rom/etc/softcenter/scripts
	install -m 0755 softcenter/ROG/res/softcenter.css $(INSTALLDIR)/rom/etc/softcenter/ROG/res
	install -m 0755 jffsinit.sh $(INSTALLDIR)/usr/sbin
ifeq ($(SWRT_NAME), $(filter $(SWRT_NAME), K3))
	install -m 0755 uhmiMsg $(INSTALLDIR)/usr/sbin
	install -m 0644 mcu/app.2.2.120.bin $(INSTALLDIR)/mcu
	install -m 0644 mcu/app.1.2.116.hex $(INSTALLDIR)/mcu
	install -m 0644 mcu/app.1.1.116.hex $(INSTALLDIR)/mcu
	install -m 0755 phi_speed $(INSTALLDIR)/usr/sbin
	install -m 0755 libwlcr.so $(INSTALLDIR)/usr/share
	install -m 0755 uhmi $(INSTALLDIR)/usr/sbin
	install -m 0755 weather $(INSTALLDIR)/usr/sbin
	install -m 0755 wl_cr $(INSTALLDIR)/usr/sbin
endif
	install -m 0755 plugin.sh $(INSTALLDIR)/usr/sbin
	install -m 0755 helper.sh $(INSTALLDIR)/usr/sbin
ifeq ($(HND_ROUTER), y)
	install -m 0755 i18n.js $(INSTALLDIR)/www/www/js
	install -m 0755 scCN.json $(INSTALLDIR)/www/www/res
	install -m 0755 scEN.json $(INSTALLDIR)/www/www/res
	install -m 0755 scTW.json $(INSTALLDIR)/www/www/res
	install -m 0755 Softcenter.asp $(INSTALLDIR)/www/www
else
	install -m 0755 i18n.js $(INSTALLDIR)/www/js
	install -m 0755 scCN.json $(INSTALLDIR)/www/res
	install -m 0755 scEN.json $(INSTALLDIR)/www/res
	install -m 0755 scTW.json $(INSTALLDIR)/www/res
	install -m 0755 Softcenter.asp $(INSTALLDIR)/www
endif
ifeq ($(SWRT_NAME), $(filter $(SWRT_NAME), SBRAC1900P SBRAC3200P K3 R8500 XWR3100 TY6201_RTK TY6201_BCM))
ifeq ($(HND_ROUTER), y)
	install -m 0755 key.asp $(INSTALLDIR)/www/www
else
	install -m 0755 key.asp $(INSTALLDIR)/www
endif
endif

clean:

