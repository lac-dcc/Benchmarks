bench_name="mpeg2"

source_files=("display.c" "gethdr.c" "idct.c" "mpeg2dec.c" "store.c" "verify.c"
              "getbits.c" "getpic.c" "idctref.c" "recon.c" "subspic.c"
              "getblk.c" "getvlc.c" "motion.c" "spatscal.c" "systems.c")
COMPILE_FLAGS=" "
RUN_OPTIONS=" -b ../data/mei16v2.m2v -r -f -o0 tmp "
