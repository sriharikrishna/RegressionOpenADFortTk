ifndef F90C
F90C=gfortran
endif

SOURCES=$(wildcard *.f90)
OBJS=$(SOURCES:.f90=.o)
BFILES=$(SOURCES:.f90=.B)
XAIFFILES=$(SOURCES:.f90=.xaif)
X2WFILES=$(SOURCES:.f90=.x2w.B)
W2FFILES=$(SOURCES:.f90=.x2w.w2f.f)
W2FOBJS=$(SOURCES:.f90=.x2w.w2f.o)

all: $(OBJS) $(BFILES) $(XAIFFILES) $(X2WFILES) $(W2FFILES) $(W2FOBJS)

%.o:%.f90
	$(F90C) -c $<

%.o:%.f
	$(F90C) -c $<

%.B:%.f90
	${OPEN64ROOT}/crayf90/sgi/mfef90 -F -z -N132 $<

%.xaif:%.B
	${OPENADFORTTKROOT}/bin/whirl2xaif $< > $@

%.x2w.B : %.xaif
	${OPENADFORTTKROOT}/bin/xaif2whirl $<

%.x2w.w2f.f:%.xb.B
	${OPEN64ROOT}/whirl2f/whirl2f -openad $<

clean: 
	rm -f $(OBJS) $(BFILES) $(XAIFFILES) $(W2FFILES) $(W2FOBJS) *.mod *.mod-whirl *.MOD
