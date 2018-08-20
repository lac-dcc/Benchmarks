bnc_name="consumer-jpeg" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "cdjpeg.c" "djpeg.c" "jcapimin.c" "jcapistd.c" "jccoefct.c" "jccolor.c" "jcdctmgr.c" "jchuff.c" "jcinit.c" "jcmainct.c" "jcmarker.c" "jcmaster.c" "jcomapi.c" "jcparam.c" "jcphuff.c" "jcprepct.c" "jcsample.c" "jctrans.c" "jdapimin.c" "jdapistd.c" "jdatadst.c" "jdatasrc.c" "jdcoefct.c" "jdcolor.c" "jddctmgr.c" "jdhuff.c" "jdinput.c" "jdmainct.c" "jdmarker.c" "jdmaster.c" "jdmerge.c" "jdphuff.c" "jdpostct.c" "jdsample.c" "jdtrans.c" "jerror.c" "jfdctflt.c" "jfdctfst.c" "jfdctint.c" "jidctflt.c" "jidctfst.c" "jidctint.c" "jidctred.c" "jmemmgr.c" "jmemnobs.c" "jquant1.c" "jquant2.c" "jutils.c" "rdcolmap.c" "wrbmp.c" "wrgif.c" "wrppm.c" "wrrle.c" "wrtarga.c" )
CXXFLAGS=" -lm " ;
RUN_OPTIONS=" -dct int -ppm -outfile Output/output_large_decode.ppm input_large.jpg " ;
