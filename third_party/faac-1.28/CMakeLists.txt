

CMAKE_MINIMUM_REQUIRED(VERSION 3.10.2)
project(faac)

set(SOURCES 
    libfaac/aacquant.c
    libfaac/bitstream.c
    libfaac/fft.c
    libfaac/frame.c
    libfaac/midside.c
    libfaac/psychkni.c
    libfaac/util.c
    libfaac/backpred.c
    libfaac/channels.c
    libfaac/filtbank.c
    libfaac/huffman.c
    libfaac/ltp.c
    libfaac/tns.c
)

add_library(faac STATIC ${SOURCES})

target_include_directories(faac PUBLIC
    include
	)

#TODO -ldl -lc -lz -lm 
target_link_libraries(faac PUBLIC m)
