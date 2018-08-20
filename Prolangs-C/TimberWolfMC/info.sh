bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "23tree.c" "addpins.c" "analyze.c" "bellman.c" "buster.c" "changraph.c" "checkpen.c" "config1.c" "config2.c" "config3.c" "density.c" "doborder.c" "doublecheck.c" "finalout.c" "finalpin.c" "findcheck.c" "findcost.c" "findloc.c" "findnodes.c" "findside.c" "fixpenal.c" "fulllink.c" "fuloop.c" "genorient.c" "gentwf.c" "ggenorien.c" "gglobals.c" "globals.c" "gmain.c" "goverlap.c" "goverlapf.c" "goverlapx.c" "gpass2.c" "grdcell.c" "grepair.c" "hash.c" "hprobes.c" "initbb.c" "loadbins.c" "loadpg.c" "main.c" "makebins.c" "makelink.c" "makesite.c" "move.c" "mshortest.c" "mt.c" "neworient.c" "outbig.c" "outgeo.c" "outpin.c" "output.c" "outsmall.c" "parser.c" "pass2.c" "perimeter.c" "placepads.c" "placepin.c" "prboard.c" "prepair.c" "prestrict.c" "printgph.c" "printnets.c" "procesnet.c" "readcells.c" "readgeo.c" "readgraph.c" "readnets.c" "readpar.c" "readpnode.c" "rebin.c" "reduceg.c" "rglobals.c" "rmain.c" "routenet.c" "savewolf.c" "scrapnet.c" "scrappin.c" "selectpin.c" "setpwates.c" "shortpath.c" "test2loop.c" "testloop.c" "twstats.c" "uaspect.c" "ufixnet.c" "ufixpin.c" "uloop.c" "unbust.c" "upin.c" "upinswap.c" "usite0.c" "usite1.c" "usite2.c" "usiteo1.c" "usiteo2.c" "usoftnet.c" "usoftpin.c" "utemp.c" "vprobes.c" "watesides.c" "wirecosts.c" "wireest.c" "wireratio.c" "woverlap.c" "woverlapf.c" "woverlapx.c" "xgraph.c" "ygraph.c" )
CXXFLAGS="-lm" ;
