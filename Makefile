
DESTDIR=
PREFIX=/usr
DATADIR=$(PREFIX)/share

all: x11-bitmap
	@echo "Type 'make install' to install to $(PREFIX) (or set PREFIX to customize)"
	@echo

x11-bitmap:
	cd x11-bitmap && $(MAKE)

install:
	if [ ! -e $(DESTDIR)$(DATADIR)/consolefonts ]; then mkdir -p $(DESTDIR)$(DATADIR)/consolefonts; fi
	cp -a consolefonts/* $(DESTDIR)$(DATADIR)/consolefonts
	if [ ! -e $(DESTDIR)$(DATADIR)/fonts/misc ]; then mkdir -p $(DESTDIR)$(DATADIR)/fonts/misc; fi
	cp -a x11-bitmap/* $(DESTDIR)$(DATADIR)/fonts/misc
	cp -a otb/* $(DESTDIR)$(DATADIR)/fonts/misc

rehash_fonts:
	mkfontdir $(DESTDIR)$(DATADIR)/fonts/misc
	xset fp rehash

# see https://askubuntu.com/questions/1244175/how-can-i-activate-bitmap-fonts-on-20-04
ubuntu-22.04:
	rm -f /etc/fonts/conf.d/70-no-bitmaps.conf
	ln -nfs /etc/fonts/conf.avail/70-force-bitmaps.conf /etc/fonts/conf.d/70-force-bitmaps.conf
	dpkg-reconfigure fontconfig-config
	dpkg-reconfigure fontconfig

.PHONY: all x11-bitmap install rehash_fonts ubuntu-22.04
