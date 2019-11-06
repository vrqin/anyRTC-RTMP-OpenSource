CMAKE_MINIMUM_REQUIRED(VERSION 3.10.2)

set(CMAKE_C_FLAGS "-Wall -fPIC")
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS}")

add_definitions(-DANDROID -DANDROID_STL=gnustl_static)
add_definitions(-DWEBRTC_POSIX -DWEBRTC_ANDROID -DWEBRTC_INCLUDE_INTERNAL_AUDIO_DEVICE -D__STDC_CONSTANT_MACROS)

# include_directories(${CMAKE_CURRENT_SOURCE_DIR}/depends/${PLATFORM_DEPEND}/include)
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/library/v7)

set(ANYRTC_ROOT ../../../../..)
#set(ANYRTC_ROOT /home/shanli/workspace/cpp/webrtc/anyrtc)
add_subdirectory(${ANYRTC_ROOT}/AnyCore libanycore.bin)
add_subdirectory(${ANYRTC_ROOT}/webrtc libwebrtc.bin)
add_subdirectory(${ANYRTC_ROOT}/third_party/libyuv libyuv.bin)
add_subdirectory(${ANYRTC_ROOT}/third_party/faac-1.28 libfaac.bin)
add_subdirectory(${ANYRTC_ROOT}/third_party/faad2-2.7 libfaad.bin)

set(SOURCES
        jni_util/classreferenceholder.cc 
        jni_util/jni_helpers.cc 
        jni_util/jni_onload.cc 
        jni_util/native_handle_impl.cc 
        androidmediaencoder_jni.cc 
        androidvideocapturer_jni.cc 
        surfacetexturehelper_jni.cc 
        japp_jni.cc 
        jRTMPGuestImpl.cc 
        jRTMPHosterImpl.cc 
        video_render.cc 
        )

add_library(anyrtmp-jni SHARED ${SOURCES})

target_include_directories(anyrtmp-jni PUBLIC
        .
        avstreamer
        jni_util
        AnyCore
        PUBLIC $<TARGET_PROPERTY:anycore,INTERFACE_INCLUDE_DIRECTORIES>
        )

#-llog -lz -lOpenSLES -lavformat -lavcodec -lavutil
target_link_libraries( anyrtmp-jni anycore webrtc yuv_static openh264 faac faad2 avformat avcodec avutil z log OpenSLES)
