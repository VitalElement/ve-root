#
# RPI3 Recipe
#
include $(DEFINE_RECIPE)

UBOOT_GIT_REF?=v2019.01

LINUX_GIT_URL:=https://github.com/VitalElement/linux.git
LINUX_GIT_REF:=ve-rpi-4.10.y

SYSTEM_IMAGE_SIZE?=1G

LAYERS += qemu

#
# Include all required layers.
#
LAYERS += bootloader/u-boot
LAYERS += kernel/linux

#
# Debian based system
#
include $(BASE)/layers/debian/debian.mk

LAYERS += kernel/modules
LAYERS += debian/depmod
LAYERS += rpi-firmware
LAYERS += debian/minimise
LAYERS += rootfs/permissions

#
# 
#
LAYERS += $(ROOTFS_LAYERS)

#
# Add virtual rootfs - sync layer!
#
LAYERS += rootfs

LAYERS += debian/initramfs
LAYERS += debian/bootramfs

LAYERS += overlays

LAYERS += bootloader/bootimage
LAYERS += bootloader/updateimage

LAYERS += rootfs/tarball
LAYERS += rootfs/sysroot
#LAYERS += rootfs/blkdev-image
LAYERS += bootimage
LAYERS += rootfs/image-ext4
LAYERS += sdcard-image

LAYERS += updateimage

include $(BUILD_RECIPE)

.PHONY: flash.info
flash.info:
	@echo "Create sd-card image..."
