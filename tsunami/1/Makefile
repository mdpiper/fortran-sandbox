FC = gfortran
CFLAGS = -c -std=f2003
LFLAGS =

all: tsunami run

tsunami:
%: %.o
	${FC} ${LFLAGS} $^ -l${FC} -o $@
	@date	
%.o: %.f90
	${FC} ${CFLAGS} $<

run: tsunami
	./$< > $<.out

clean:
	rm -rf *~ *.o *.so *.mod tsunami tsunami.out
