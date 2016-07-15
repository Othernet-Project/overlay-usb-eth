.PHONY: all clean

VERSION=1.0
OVERLAY_NAME=usbeth
OVERLAY_FILE=overlay-$(OVERLAY_NAME)-$(VERSION).sqfs
SOURCE := overlay

all: $(OVERLAY_FILE)

clean:
	-rm *.sqfs

$(OVERLAY_FILE): $(SOURCE)
	mksquashfs $< $@ -root-owned -comp lz4
