

CMAKE_MINIMUM_REQUIRED(VERSION 3.10.2)
project(faad2)

add_definitions(-DFAAD_HAVE_CONFIG_H)

set(SOURCES 
    libfaad/bits.c 
    libfaad/cfft.c 
    libfaad/decoder.c 
    libfaad/drc.c
    libfaad/drm_dec.c 
    libfaad/error.c 
    libfaad/filtbank.c
    libfaad/ic_predict.c 
    libfaad/is.c 
    libfaad/lt_predict.c 
    libfaad/mdct.c 
    libfaad/mp4.c
    libfaad/ms.c 
    libfaad/output.c 
    libfaad/pns.c
    libfaad/ps_dec.c 
    libfaad/ps_syntax.c
    libfaad/pulse.c 
    libfaad/specrec.c 
    libfaad/syntax.c 
    libfaad/tns.c 
    libfaad/hcr.c 
    libfaad/huffman.c
    libfaad/rvlc.c 
    libfaad/ssr.c 
    libfaad/ssr_fb.c 
    libfaad/ssr_ipqf.c 
    libfaad/common.c
    libfaad/sbr_dct.c 
    libfaad/sbr_e_nf.c 
    libfaad/sbr_fbt.c 
    libfaad/sbr_hfadj.c 
    libfaad/sbr_hfgen.c
    libfaad/sbr_huff.c 
    libfaad/sbr_qmf.c 
    libfaad/sbr_syntax.c 
    libfaad/sbr_tf_grid.c 
    libfaad/sbr_dec.c
)

add_library(faad2 STATIC ${SOURCES})

target_include_directories(faad2 PUBLIC
    include
    libfaad
	)

#TODO -ldl -lc -lz -lm 
target_link_libraries(faad2 PUBLIC m)
