
DISTDIR = $(CROSSDIR)/dist
BUILDDIR = $(CROSSDIR)/build

TNYLPOSRC = tnylpo-1.1.6
TNYLPODST = tnylpo-1.1.6.tar.gz


all: clean tnylpo

tnylpo:
	mkdir -p $(BUILDDIR)
	cd $(BUILDDIR) && tar zxf $(DISTDIR)/$(TNYLPODST)
	cd $(BUILDDIR)/$(TNYLPOSRC) && make
	cp $(BUILDDIR)/$(TNYLPOSRC)/tnylpo $(TOPDIR)/bin

clean:
	rm -rf $(BUILDDIR)

