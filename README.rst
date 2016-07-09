overlay-usb-eth
============

Prerequisites
-------------

To create the overlay, you will need squashfs-tools.

Creating the overlay
--------------------

To create the overlay, run ``make``. This creates ``overlay-fcbh.sqfs``
SquashFS image in the source directory.

Usage
-----

This sets the static ip address for ``usb0`` to ``10.10.10.10`` and the gateway
address to ``10.10.10.100`` on CHIP. 

To give rxOS access to the internet on a standard linux computer, use the 
following command, with the network device in place of ``<network-device>``.

``ifconfig <network-device> 10.10.10.100; ifconfig <network-device> up`` 

You should be able to access the CHIP from the linux computer and the internet 
from the CHIP.
