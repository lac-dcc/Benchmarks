bnc_name="mafft" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=(Calignm1.c constants.c defs.c Falign.c fft.c fftFunctions.c Galign11.c \
              genalign11.c genGalign11.c Halignmm.c io.c Lalign11.c Lalignmm.c \
              mltaln9.c MSalign11.c MSalignmm.c mtxutl.c pairlocalalign.c \
              partQalignmm.c partSalignmm.c Qalignmm.c Ralignmm.c rna.c SAalignmm.c \
              Salignmm.c suboptalign11.c tddis.c) ;
CXXFLAGS=" -DLLVM " ;
RUN_OPTIONS=" -b 62 -g 0.100 -f 2.00 -h 0.100 -L " ;
STDIN=" pyruvate_decarboxylase.fasta "