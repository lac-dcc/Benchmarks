bench_name="adpcm-rawcaudio"

source_files=("rawcaudio.c" "adpcm.c")
COMPILE_FLAGS=" -lm "
RUN_OPTIONS=""
STDIN=" ../data/clinton.pcm "
