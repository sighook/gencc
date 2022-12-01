# gencc version
VERSION = 0.1.1

PREFIX = /usr/local
MANPREFIX= ${PREFIX}/share/man

all: man

man:
	pod2man -n gencc -r${VERSION} -c' ' README.pod gencc.1

install: all
	install -m 0755 -Dt ${DESTDIR}${PREFIX}/bin/     gencc
	install -m 0644 -Dt ${DESTDIR}${MANPREFIX}/man1/ gencc.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/gencc
	rm -f ${DESTDIR}${MANPREFIX}/man1/gencc.1

clean:
	rm gencc.1

.PHONY: all clean install uninstall
