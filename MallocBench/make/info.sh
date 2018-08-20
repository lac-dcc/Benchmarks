bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=('commands.c' 'job.c' 'dir.c' 'file.c' 'load.c' 'misc.c' 'main.c' 'read.c' \
       'remake.c' 'remote.c' 'rule.c' 'implicit.c' 'default.c' 'variable.c' 'expand.c' \
       'function.c' 'vpath.c' 'version.c' 'arscan.c' 'ar.c') ;
CXXFLAGS="-DHAVE_SIGLIST -DNO_LDAV -DNOMEMOPT -DPOSIX" ;

PROJ_SRC_DIR=$(pwd) ;
RUN_OPTIONS="-n -f $PROJ_SRC_DIR/INPUT/GNUmakefile.make USEROPT=BWGC VPATH=$PROJ_SRC_DIR"
