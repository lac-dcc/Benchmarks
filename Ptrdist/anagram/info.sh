bench_name="anagram"

source_files=("anagram.c")
COMPILE_FLAGS=" -lm -D_POSIX_SOURCE -DHYPRE_TIMING -DHYPRE_SEQUENTIAL "
RUN_OPTIONS=" words 2 "
STDIN="input.OUT"
