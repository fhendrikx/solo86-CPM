include $(TOPDIR)/Makefile.conf

%.h86: %.a86
	$(ASM86) $<

all: cpm.sys

cpm.sys: cpm86.h86
	$(GENCMD) cpm86.h86 8080 "CODE[A51,M0000]"
	$(MV) cpm86.cmd cpm.sys

cpm86.h86: cpm.h86 bios.h86
	$(DOSCAT) cpm.h86 > cpm86.h86
	$(CT) bios.h86 >> cpm86.h86

cpm.h86: ccp.h86 bdos.h86
	$(DOSCAT) ccp.h86 > cpm.h86
	$(CT) bdos.h86 >> cpm.h86


clean:
	rm -f cpm.sys
	rm -f *.h86 *.lst *.sym *~

