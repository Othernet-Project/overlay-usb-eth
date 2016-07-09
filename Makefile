.PHONY: all clean

all: overlay-usb-eth.sqfs

clean:
	-rm *.sqfs

overlay-usb-eth.sqfs: overlay
	mksquashfs $< $@ -root-owned -comp lz4
