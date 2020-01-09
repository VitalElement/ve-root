#
# Include any base-recipes
#
CONFIG_VARIANT:=rpi3
SYSTEM_IMAGE_SIZE:=2G

include $(DEFINE_RECIPE)

UBOOT_GIT_URL:=https://github.com/VitalElement/u-boot.git
UBOOT_GIT_REF:=v2019.01-ve-rpi3

#kernel-config:=$(RECIPE)/kconfigs/linux.config

BASE_RECIPE:=rpi

CONFIG_DISABLE_LOGIN:=y
CONFIG_SECURE_BOOT:=n

#LAYERS += sdcard-image

include $(BUILD_RECIPE)
