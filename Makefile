
DESTDIR=
PREFIX=/usr
DATADIR=$(PREFIX)/share

install:
	if [ ! -e $(DESTDIR)$(DATADIR)/consolefonts ]; then mkdir -p $(DESTDIR)$(DATADIR)/consolefonts; fi
	cp -a consolefonts/* $(DESTDIR)$(DATADIR)/consolefonts
	if [ ! -e $(DESTDIR)$(DATADIR)/fonts/misc ]; then mkdir -p $(DESTDIR)$(DATADIR)/fonts/misc; fi
	cp -a x11-bitmap/* $(DESTDIR)$(DATADIR)/fonts/misc
	mkfontdir $(DESTDIR)$(DATADIR)/fonts/misc
	xset fp rehash


