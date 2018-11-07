bench_name="dc"

source_files=("adc.c" "dc.c" "jobcntl.c" "c_print_results.c" "extbuild.c" "rbt.c")
COMPILE_FLAGS=" "
RUN_OPTIONS=" 10000000 ADC.par "

if [[ $SMALL_PROGRAM_SIZE ]]; then
  COMPILE_FLAGS="-DSMALL_PROBLEM_SIZE"
fi
