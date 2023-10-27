include $(TOPDIR)/rules.mk

PKG_NAME:=poc_mqtt
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Alexis DEVLEESCHAUWER <alexis@devleeschauwer.fr>
PKG_LICENSE:=CC0-1.0

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/poc_mqtt
	SECTION:=utils
	# Select package by default
	#DEFAULT:=y
	CATEGORY:=Utilities
	TITLE:=POC for program use mqtt client lib in openwrt.
	DEPENDS:=+libmosquitto-nossl
endef

define Package/poc_mqtt/description
	This is some dummy application for test mqtt dependecy.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/poc_mqtt/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/poc_mqtt $(1)/usr/bin/
endef

$(eval $(call BuildPackage,poc_mqtt))
