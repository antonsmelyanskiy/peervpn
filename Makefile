CFLAGS+=-O2
LIBS+=-lcrypto

all: peervpn
peervpn: peervpn.o
	$(CC) $(LDFLAGS) peervpn.o $(LIBS) -o $@
peervpn.o: peervpn.c

install:
	install peervpn ${DESTDIR}/usr/local/bin/peervpn

clean:
	rm -f peervpn peervpn.o
