bench_name="security-sha"

source_files=( "sha.c" "sha_driver.c" )
COMPILE_FLAGS=" -lm "
RUN_OPTIONS=" input_large.asc "
