bench_name="consumer_lame"

source_files=($(ls *.c))
COMPILE_FLAGS=" -DLAMESNDFILE -DHAVEMPGLIB -DLAMEPARSE -lm "
RUN_OPTIONS=" "
