
set(HDRS
    video_capture\device_info_impl.h
    video_capture\video_capture.h
    video_capture\video_capture_config.h
    video_capture\video_capture_defines.h
    video_capture\video_capture_delay.h
    video_capture\video_capture_factory.h
    video_capture\video_capture_impl.h

    )

set(SRCS
    video_capture\device_info_impl.cc
    video_capture\video_capture_factory.cc
    video_capture\video_capture_impl.cc
    )

add_library (video_capture_module STATIC ${SRCS} ${HDRS})

target_include_directories (video_capture_module PUBLIC
  .
)

#target_link_libraries(video_capture_module
#  
#)