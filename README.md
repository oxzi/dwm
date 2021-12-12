# Customized dwm

## About
This repository and its `my-dwm` branch contains a customized version of the
[dynamic window manager](https://dwm.suckless.org/) with the following patches
and some personal modifications to the configuration.

All the great work is done by the dwm and patch contributors!


## Patches
- [noborder](https://dwm.suckless.org/patches/noborder/): removes the border if
  only one window is visible
- [push](https://dwm.suckless.org/patches/push/), `no_master`-version: allows to
  move the *client windows* inside the *client list*.
- [systray](https://dwm.suckless.org/patches/systray/): shows a system tray
  on the first monitor; also works fine with multiple monitors

## Test
```
$ nix-shell -p xorg.{libX11,libXinerama,libXft,xinit} --run ./test.sh
```


## dwm's README
```
dwm - dynamic window manager
============================
dwm is an extremely fast, small, and dynamic window manager for X.


Requirements
------------
In order to build dwm you need the Xlib header files.


Installation
------------
Edit config.mk to match your local setup (dwm is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install dwm (if
necessary as root):

    make clean install


Running dwm
-----------
Add the following line to your .xinitrc to start dwm using startx:

    exec dwm

In order to connect dwm to a specific display, make sure that
the DISPLAY environment variable is set correctly, e.g.:

    DISPLAY=foo.bar:1 exec dwm

(This will start dwm on display :1 of the host foo.bar.)

In order to display status info in the bar, you can do something
like this in your .xinitrc:

    while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
    do
    	sleep 1
    done &
    exec dwm


Configuration
-------------
The configuration of dwm is done by creating a custom config.h
and (re)compiling the source code.
```
