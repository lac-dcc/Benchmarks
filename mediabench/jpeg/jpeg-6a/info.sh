bnc_name="g721" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=("jcapimin.c" "jcapistd.c" "jctrans.c" "jcparam.c" "jdatadst.c"
  "jcinit.c" "jcmaster.c" "jcmarker.c" "jcmainct.c" "jcprepct.c" "jccoefct.c"
  "jccolor.c" "jcsample.c" "jchuff.c" "jcphuff.c" "jcdctmgr.c" "jfdctfst.c"
  "jfdctflt.c" "jfdctint.c" "jdapimin.c" "jdapistd.c" "jdtrans.c" "jdatasrc.c"
  "jdmaster.c" "jdinput.c" "jdmarker.c" "jdhuff.c" "jdphuff.c" "jdmainct.c"
  "jdcoefct.c" "jdpostct.c" "jddctmgr.c" "jidctfst.c" "jidctflt.c"
  "jidctint.c" "jidctred.c"  "jdsample.c" "jdcolor.c" "jquant1.c" "jquant2.c"
  "jdmerge.c" "jcomapi.c" "jutils.c" "jerror.c" "jmemmgr.c" "jmemnobs.c"
  "cjpeg.c" "rdppm.c" "rdgif.c" "rdtarga.c" "rdrle.c" "rdbmp.c" "rdswitch.c"
  "cdjpeg.c") ;
CXXFLAGS=" " ;
RUN_OPTIONS=" -dct int -progressive -opt ../data/testimg.ppm " ;
