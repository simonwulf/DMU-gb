GBDK = "c:/gbdk"
CC	= $(GBDK)/bin/lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG

BINS	= hello.gb

all:	$(BINS)

make.bat: Makefile
	make -sn | sed y/\\//\\\\/ | grep -v make > make.bat

%.o:	%.c
	$(CC) -c -o $@ $<

%.s:	%.c
	$(CC) -S -o $@ $<

%.o:	%.s
	$(CC) -c -o $@ $<

%.gb:	%.o
	$(CC) -o $@ $<

clean:
	rm -f *.o *.lst *.map *.gb *~ *.rel *.cdb *.ihx *.lnk *.sym *.asm