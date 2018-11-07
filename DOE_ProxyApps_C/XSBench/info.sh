bench_name="XSBench"
source_files=( "CalculateXS.c" "GridInit.c" "Main.c" "Materials.c" "XSutils.c" "io.c" )
COMPILE_FLAGS=" -lm -DVERIFICATION "
RUN_OPTIONS=" -s small -g 1250 -l 1000000 "
