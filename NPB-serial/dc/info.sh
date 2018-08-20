bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=("adc.c" "dc.c" "jobcntl.c" "c_print_results.c" "extbuild.c" "rbt.c") ;
CXXFLAGS=" " ;
RUN_OPTIONS=" 10000000 ADC.par " ;

if [[ $SMALL_PROGRAM_SIZE ]]; then
  CXXFLAGS="-DSMALL_PROBLEM_SIZE" ;
fi