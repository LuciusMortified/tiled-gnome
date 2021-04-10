#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_TILED_GNOME = $(PREFIX)/bin/tiled-gnome
PATH_TILED_GNOME_DESKTOP = $(PREFIX)/share/applications/tiled-gnome.desktop
PATH_TILED_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/tiled-gnome.session
PATH_TILED_GNOME_XSESSION = $(PREFIX)/share/xsessions/tiled-gnome.desktop
PATH_GNOME_SESSION_TILED = $(PREFIX)/bin/gnome-session-tiled

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/tiled-gnome-xsession.desktop $(PATH_TILED_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/tiled-gnome.desktop $(PATH_TILED_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/tiled-gnome.session $(PATH_TILED_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/tiled-gnome $(PATH_TILED_GNOME)
	$(INSTALL) -m0755 -D session/gnome-session-tiled $(PATH_GNOME_SESSION_TILED)



uninstall:
	rm -f $(PATH_TILED_GNOME)
	rm -f $(PATH_TILED_GNOME_DESKTOP)
	rm -f $(PATH_TILED_GNOME_SESSION)
	rm -f $(PATH_TILED_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_TILED)



.PHONY: all install uninstall
