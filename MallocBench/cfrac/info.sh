bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=("cfrac.c" "pops.c" "pconst.c" "pio.c" \
              "pabs.c" "pneg.c" "pcmp.c" "podd.c" "phalf.c" \
              "padd.c" "psub.c" "pmul.c" "pdivmod.c" "psqrt.c" "ppowmod.c" \
              "atop.c" "ptoa.c" "itop.c" "utop.c" "ptou.c" "errorp.c" \
              "pfloat.c" "pidiv.c" "pimod.c" "picmp.c" \
              "primes.c" "pcfrac.c" "pgcd.c") ;
CXXFLAGS="-lm -DNOMEMOPT" ;

PROJ_SRC_DIR=$(pwd) ;
if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="376529507064485971626234556089714053987" ;
else
  RUN_OPTIONS="41757646344123832613190542166099121" ;
fi