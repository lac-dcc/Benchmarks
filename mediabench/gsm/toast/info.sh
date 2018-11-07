bench_name="gsm"

source_files=("add.c" "code.c" "debug.c" "decode.c" "gsm_create.c" 
  "gsm_decode.c" "gsm_destroy.c" "gsm_encode.c" "gsm_explode.c" 
  "gsm_implode.c" "gsm_option.c" "gsm_print.c" "long_term.c" "lpc.c" 
  "preprocess.c" "rpe.c" "short_term.c" "table.c" "toast.c" 
  "toast_alaw.c" "toast_audio.c" "toast_lin.c" "toast_ulaw.c")
COMPILE_FLAGS=" -DNeedFunctionPrototypes=1 -DSASR "
RUN_OPTIONS=" -c ../data/clinton.pcm "
