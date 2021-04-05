FC = gfortran
CFLAGS = -c
LFLAGS =

call_iswap: iswap.o caller.o
	${FC} ${LFLAGS} $^ -l${FC} -o $@
	@date

clean:
	rm -rf *.o *.so *.mod call_iswap
