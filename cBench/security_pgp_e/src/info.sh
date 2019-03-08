bench_name="security_pgp_e"

source_files=($(ls *.c))
COMPILE_FLAGS=" -lm -DUNIX -DPORTABLE -m32 "
RUN_OPTIONS=" "
