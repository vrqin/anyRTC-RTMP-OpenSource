

CMAKE_MINIMUM_REQUIRED(VERSION 3.10.2)
project(yuv_static)

set(ENABLE_NEON True)

#-std=gnu++11 -frtti -Wno-literal-suffix -DWEBRTC_POSIX -DWEBRTC_ANDROID -DWEBRTC_INCLUDE_INTERNAL_AUDIO_DEVICE -D__STDC_CONSTANT_MACROS 
# set(CMAKE_C_FLAGS "-frtti -Wno-literal-suffix ${CMAKE_C_FLAGS}")
# set(CMAKE_CXX_FLAGS "-std=gnu++11 -frtti -Wno-literal-suffix ${CMAKE_CXX_FLAGS}")
# add_definitions(-DWEBRTC_POSIX -DWEBRTC_ANDROID -DWEBRTC_INCLUDE_INTERNAL_AUDIO_DEVICE -D__STDC_CONSTANT_MACROS)

set(SOURCES 
    source/compare.cc
    source/compare_common.cc
    source/compare_neon64.cc
    source/compare_gcc.cc   
    source/convert.cc       
    source/convert_argb.cc  
    source/convert_from.cc  
    source/convert_from_argb.cc
    source/convert_to_argb.cc  
    source/convert_to_i420.cc  
    source/cpu_id.cc        
    source/planar_functions.cc 
    source/rotate.cc        
    source/rotate_any.cc    
    source/rotate_argb.cc   
    source/rotate_common.cc 
    source/rotate_mips.cc   
    source/rotate_neon64.cc 
    source/rotate_gcc.cc    
    source/row_any.cc       
    source/row_common.cc    
    source/row_mips.cc      
    source/row_neon64.cc    
    source/row_gcc.cc	    
    source/scale.cc         
    source/scale_any.cc     
    source/scale_argb.cc    
    source/scale_common.cc  
    source/scale_mips.cc    
    source/scale_neon64.cc  
    source/scale_gcc.cc     
    source/video_common.cc
)

# TODO(fbarchard): Enable mjpeg encoder.
#   source/mjpeg_decoder.cc
#   source/convert_jpeg.cc
#   source/mjpeg_validate.cc

# if (ENABLE_NEON)
#     add_definitions(-DLIBYUV_NEON)

#     set(SOURCES ${SOURCES}
#         source/compare_neon.cc
#         source/rotate_neon.cc
#         source/row_neon.cc
#         source/scale_neon.cc
#     )
# endif()

add_library(yuv_static STATIC ${SOURCES})

target_include_directories(yuv_static PUBLIC
    include
	)

# target_link_libraries(yuv_static PUBLIC m)
