LAYER:=xdg-desktop-portal-wlr
include $(DEFINE_LAYER)

portal-wlr:=$(LSTAMP)/portal-wlr

$(L) += $(portal-wlr)

$(call git_clone, portal-wlr, https://github.com/emersion/xdg-desktop-portal-wlr.git, master)

include $(BUILD_LAYER)

$(portal-wlr):
	mkdir -p $(builddir)/portal-wlr
	cd $(srcdir)/portal-wlr && meson $(builddir)/portal-wlr --buildtype=release
	cd $(builddir)/portal-wlr && ninja -v
	cd $(builddir)/portal-wlr && sudo ninja install
	$(stamp)

