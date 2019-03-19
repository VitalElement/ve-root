LAYER:=avalon-packager

include $(DEFINE_LAYER)

PACKAGE_DIR?=
PACKAGE_NAME?=

package:=$(BASE)/out/packages/$(PACKAGE_NAME).avpkg

$(L) += $(package)

include $(BUILD_LAYER)

$(package):
	mkdir -p $(dir $@)
	cd $(PACKAGE_DIR) && avalon package .
	mv $(PACKAGE_DIR)/package.avpkg $@
