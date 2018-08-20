bnc_name="automotive-susan" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "susan.c" )
CXXFLAGS=" -lm " ;
RUN_OPTIONS=" input_large.pgm Output/output_large.smoothing.pgm -s " ;
