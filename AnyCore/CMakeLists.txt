

CMAKE_MINIMUM_REQUIRED(VERSION 3.10.2)
project(anycore)

#-std=gnu++11 -frtti -Wno-literal-suffix -DWEBRTC_POSIX -DWEBRTC_ANDROID -DWEBRTC_INCLUDE_INTERNAL_AUDIO_DEVICE -D__STDC_CONSTANT_MACROS 
set(CMAKE_C_FLAGS "-frtti -Wno-literal-suffix ${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "-std=gnu++11 -frtti -Wno-literal-suffix ${CMAKE_CXX_FLAGS}")
add_definitions(-DWEBRTC_POSIX -DWEBRTC_ANDROID -DWEBRTC_INCLUDE_INTERNAL_AUDIO_DEVICE -D__STDC_CONSTANT_MACROS)

set(SOURCES 
        aacencode.cc
        aacdecode.cc
        anyrtmpcore.cc
        anyrtmplayer.cc
        anyrtmpstreamer.cc
        anyrtmpull.cc
        anyrtmpush.cc
        avcodec.cc
        plybuffer.cc
        plydecoder.cc
        RtmpGuesterImpl.cc
        RtmpHosterImpl.cc
        videofilter.cc
        srs_librtmp/srs_librtmp.cpp
)

add_library(anycore STATIC ${SOURCES})

target_include_directories(anycore PUBLIC
    .
    ..
    ../third_party/faac-1.28/include
    ../third_party/faad2-2.7/include
    srs_librtmp
    # PUBLIC $<TARGET_PROPERTY:srs_librtmp,INTERFACE_INCLUDE_DIRECTORIES>
	)

# target_link_libraries(anycore PUBLIC m)
