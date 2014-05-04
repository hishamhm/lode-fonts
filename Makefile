
DESTDIR=
PREFIX=/usr
DATADIR=$(PREFIX)/share

all:
	@echo "Type 'make install' to install to $(PREFIX) (or set PREFIX to customize)"
	@echo

install:
	if [ ! -e $(DESTDIR)$(DATADIR)/consolefonts ]; then mkdir -p $(DESTDIR)$(DATADIR)/consolefonts; fi
	cp -a consolefonts/* $(DESTDIR)$(DATADIR)/consolefonts
	if [ ! -e $(DESTDIR)$(DATADIR)/fonts/misc ]; then mkdir -p $(DESTDIR)$(DATADIR)/fonts/misc; fi
	cp -a x11-bitmap/* $(DESTDIR)$(DATADIR)/fonts/misc

rehash_fonts:
	mkfontdir $(DESTDIR)$(DATADIR)/fonts/misc
	xset fp rehash

