include $(TOPDIR)/Makefile.conf
include $(TOPDIR)/Makefile.rules

SUBDIRS = src

dist: cpm86-1.img cpm86-2.img cpm86-3.img cpm86-4.img

cpm86-1.img:
	cp $(TOPDIR)/lib/image/base.img $(TOPDIR)/out/$@
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/src/cpm.sys 0:CPM.SYS
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/atinit.cmd 0:ATINIT.CMD
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/pip.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/stat.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/submit.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/setup.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/dskmaint.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/hdmaint.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/function.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/config.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/assign.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/data.pfk 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/ed.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/tod.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/help.* 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/print.* 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/mform.* 0:
	cpmls -F -f ibmpc-514ss $(TOPDIR)/out/$@ 0:*.*

cpm86-2.img:
	cp $(TOPDIR)/lib/image/base.img $(TOPDIR)/out/$@
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/pip.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/submit.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/ed.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/ddt86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/asm86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/gencmd.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/sys/gendef.cmd 0:
	cpmls -F -f ibmpc-514ss $(TOPDIR)/out/$@ 0:*.*

cpm86-3.img:
	cp $(TOPDIR)/lib/image/base.img $(TOPDIR)/out/$@
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/dev/rasm86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/dev/link86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/dev/lib86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/dev/xref86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/dev/sid86.cmd 0:
	cpmls -F -f ibmpc-514ss $(TOPDIR)/out/$@ 0:*.*

cpm86-4.img:
	cp $(TOPDIR)/lib/image/base.img $(TOPDIR)/out/$@
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/dev/pbasic.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/dev/cbas86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/dev/crun86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/files/dev/mbasic86.cmd 0:
	cpmls -F -f ibmpc-514ss $(TOPDIR)/out/$@ 0:*.*

