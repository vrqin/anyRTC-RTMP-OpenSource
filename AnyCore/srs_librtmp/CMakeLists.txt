

CMAKE_MINIMUM_REQUIRED(VERSION 3.10.2)
project(srs_rtmp)

set(CMAKE_C_FLAGS "-frtti -Wno-literal-suffix ${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "-std=gnu++11 -frtti -Wno-literal-suffix ${CMAKE_CXX_FLAGS}")
# add_definitions(-DWEBRTC_POSIX -DWEBRTC_ANDROID -DWEBRTC_INCLUDE_INTERNAL_AUDIO_DEVICE -D__STDC_CONSTANT_MACROS)

set(SOURCES 
    srs_librtmp.cpp
)

add_library(srs_rtmp STATIC ${SOURCES})

target_include_directories(srs_rtmp PUBLIC
    .
	)

# target_link_libraries(srs_rtmp PUBLIC m)
