LAYER:=qemu
include $(DEFINE_LAYER)

qemu-kernel-config:=$(TC_STAMP)/qemu-kernel-config

$(L) += $(qemu-kernel-config)

include $(BUILD_LAYER)

$(qemu-kernel-config):
	@echo -1 > /proc/sys/fs/binfmt_misc/status
	@echo ':aarch64:M::\x7fELF\x02\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\xb7\x00:\xff\xff\xff\xff\xff\xff\xff\x00\xff\xff\xff\xff\xff\xff\xff\xff\xfe\xff\xff\xff:/usr/bin/qemu-aarch64-static:' > /proc/sys/fs/binfmt_misc/register



