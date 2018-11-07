bench_name="telecomm-FFT"

source_files=( "fftmisc.c" "fourierf.c" "main.c" )
COMPILE_FLAGS=" -lm "
RUN_OPTIONS=" 8 32768 -i "
