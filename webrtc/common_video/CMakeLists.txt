
set(HDRS
     h264\sps_vui_rewriter.h
     h264\h264_common.h
     h264\pps_parser.h
     h264\sps_parser.h
     include\bitrate_adjuster.h
     include\frame_callback.h
     include\i420_buffer_pool.h
     include\incoming_video_stream.h
     include\video_frame_buffer.h
     libyuv\include\webrtc_libyuv.h
     video_render_frames.h
     )

set(SRCS     
    bitrate_adjuster.cc
    h264\sps_vui_rewriter.cc
    h264\h264_common.cc
    h264\pps_parser.cc
    h264\sps_parser.cc
    i420_buffer_pool.cc
    video_frame.cc
    incoming_video_stream.cc
    libyuv\webrtc_libyuv.cc
    video_frame_buffer.cc
    video_render_frames.cc
    )

add_library (common_video STATIC ${SRCS} ${HDRS})

target_include_directories (common_video PUBLIC
  .
)

#target_link_libraries(common_video
#  
#)