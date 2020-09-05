PREFIX = /usr/local
MANPREFIX= $(PREFIX)/share/man

all: man

man:
	pod2man -n gencc -r 0.1 -c "User Commands" README.pod gencc.1

install: all
	install -Dm755 gencc   -t $(DESTDIR)$(PREFIX)/bin
	install -Dm755 gencc.1 -t $(DESTDIR)$(MANPREFIX)/man1

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/gencc
	rm -f $(DESTDIR)$(MANPREFIX)/man1/gencc.1

clean:
	rm gencc.1

.PHONY: all clean install uninstall
