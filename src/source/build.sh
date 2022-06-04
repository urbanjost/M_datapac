#!/bin/bash
cd $(dirname $0)
export GITHUB=TRUE
export DEMO_OUTDIR=../../example
export DEMO_SUBDIR=FALSE
GPF_build_module M_datapac_n M_datapac_s M_datapac_d M_datapac 
cp ../../docs/BOOK_M_datapac.html ../../docs/index.html
cp ../../docs/man3.html ../../docs/index.html
ccall ../../test/test_suite_M_datapac.[fF]90
exit
