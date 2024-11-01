include $(TOPDIR)/Makefile.conf
include $(TOPDIR)/Makefile.rules

SUBDIRS = src

dist: cpm86-1.img cpm86-2.img cpm86-3.img cpm86-4.img

cpm86-1.img:
	cp $(TOPDIR)/lib/img/base.img $(TOPDIR)/out/$@
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/src/cpm.sys 0:CPM.SYS
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/atinit.cmd 0:ATINIT.CMD
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/pip.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/stat.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/submit.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/setup.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/dskmaint.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/hdmaint.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/function.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/config.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/assign.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/data.pfk 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/ed.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/tod.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/help.* 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/print.* 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/mform.* 0:
	cpmls -F -f ibmpc-514ss $(TOPDIR)/out/$@ 0:*.*

cpm86-2.img:
	cp $(TOPDIR)/lib/img/base.img $(TOPDIR)/out/$@
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/pip.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/submit.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/ed.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/ddt86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/asm86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/gencmd.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/sys/gendef.cmd 0:
	cpmls -F -f ibmpc-514ss $(TOPDIR)/out/$@ 0:*.*

cpm86-3.img:
	cp $(TOPDIR)/lib/img/base.img $(TOPDIR)/out/$@
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/dev/rasm86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/dev/link86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/dev/lib86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/dev/xref86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/dev/sid86.cmd 0:
	cpmls -F -f ibmpc-514ss $(TOPDIR)/out/$@ 0:*.*

cpm86-4.img:
	cp $(TOPDIR)/lib/img/base.img $(TOPDIR)/out/$@
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/dev/pbasic.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/dev/cbas86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/dev/crun86.cmd 0:
	cpmcp -f ibmpc-514ss $(TOPDIR)/out/$@ $(TOPDIR)/lib/dev/mbasic86.cmd 0:
	cpmls -F -f ibmpc-514ss $(TOPDIR)/out/$@ 0:*.*

