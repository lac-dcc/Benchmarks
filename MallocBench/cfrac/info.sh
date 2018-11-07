bench_name="cfrac"

source_files=("cfrac.c" "pops.c" "pconst.c" "pio.c" \
              "pabs.c" "pneg.c" "pcmp.c" "podd.c" "phalf.c" \
              "padd.c" "psub.c" "pmul.c" "pdivmod.c" "psqrt.c" "ppowmod.c" \
              "atop.c" "ptoa.c" "itop.c" "utop.c" "ptou.c" "errorp.c" \
              "pfloat.c" "pidiv.c" "pimod.c" "picmp.c" \
              "primes.c" "pcfrac.c" "pgcd.c")
COMPILE_FLAGS="-lm -DNOMEMOPT"

PROJ_SRC_DIR=$(pwd)
if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="376529507064485971626234556089714053987"
else
  RUN_OPTIONS="41757646344123832613190542166099121"
fi
