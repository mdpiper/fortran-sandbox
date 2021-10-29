FC = gfortran
CFLAGS = -c -std=f2003
LFLAGS =

all: tsunami

tsunami:
%: %.o
	${FC} ${LFLAGS} $^ -l${FC} -o $@
	@date	
%.o: %.f90
	${FC} ${CFLAGS} $<

clean:
	rm -rf *~ *.o *.so *.mod tsunami
