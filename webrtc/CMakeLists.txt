

CMAKE_MINIMUM_REQUIRED(VERSION 3.10.2)
project(webrtc)

# LOCAL_CFLAGS := -std=gnu++11 -frtti -D__UCLIBC__ -DWEBRTC_POSIX -DWEBRTC_LINUX -DWEBRTC_ANDROID -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS 
# LOCAL_CFLAGS += -DWEBRTC_THREAD_RR -DWEBRTC_INCLUDE_INTERNAL_AUDIO_DEVICE -DWEBRTC_USE_H264 -DWEBRTC_INITIALIZE_FFMPEG -DNO_STL

set(CMAKE_C_FLAGS "-frtti -Wno-literal-suffix ${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "-std=gnu++11 -frtti -Wno-literal-suffix ${CMAKE_CXX_FLAGS}")
add_definitions(-DWEBRTC_POSIX -DWEBRTC_ANDROID -DWEBRTC_INCLUDE_INTERNAL_AUDIO_DEVICE -D__STDC_CONSTANT_MACROS -DWEBRTC_THREAD_RR -DWEBRTC_INCLUDE_INTERNAL_AUDIO_DEVICE -DWEBRTC_USE_H264 -DWEBRTC_INITIALIZE_FFMPEG -DNO_STL)

set(SOURCES common_types.cc)
	
set(SOURCES ${SOURCES}
    api/androidvideocapturer.cc
    )

set(SOURCES ${SOURCES}
		base/asyncinvoker.cc 
		base/asyncfile.cc 
		base/asyncresolverinterface.cc 
		base/asyncsocket.cc 
		base/asyncpacketsocket.cc 
		base/asynctcpsocket.cc 
		base/asyncudpsocket.cc 
		base/base64.cc 
		base/bitbuffer.cc 
		base/bytebuffer.cc 
		base/checks.cc 
		base/criticalsection.cc 
		base/event.cc 
		base/event_tracer.cc 
		base/ifaddrs-android.cc 
		base/ipaddress.cc 
		base/logging.cc 
		base/location.cc 
		base/messagehandler.cc 
		base/messagequeue.cc 
		base/nullsocketserver.cc 
		base/nethelpers.cc 
		base/physicalsocketserver.cc 
		base/platform_thread.cc 
		base/sharedexclusivelock.cc 
		base/signalthread.cc 
		base/sigslot.cc 
		base/socketaddress.cc 
		base/stringencode.cc 
		base/thread.cc 
		base/timeutils.cc 
		base/timing.cc 
		base/timestampaligner.cc
		base/thread_checker_impl.cc
		base/common.cc
)

set(SOURCES ${SOURCES}
		common_audio/resampler/push_resampler.cc 
		common_audio/resampler/push_sinc_resampler.cc 
		common_audio/resampler/resampler.cc 
		common_audio/resampler/sinc_resampler.cc 
		common_audio/signal_processing/spl_init.c 
		common_audio/signal_processing/cross_correlation.c 
		common_audio/signal_processing/downsample_fast.c 
		common_audio/signal_processing/min_max_operations.c 
		common_audio/signal_processing/vector_scaling_operations.c 
		common_audio/audio_util.cc 
        common_audio/ring_buffer.c
)

# ifeq ($(TARGET_ARCH_ABI),x86)	
# LOCAL_SRC_FILES += common_audio/resampler/sinc_resampler_sse.cc
# endif

set(SOURCES ${SOURCES}
		common_video/h264/h264_common.cc 
		common_video/h264/pps_parser.cc 
		common_video/h264/sps_parser.cc 
		common_video/h264/sps_vui_rewriter.cc 
		common_video/libyuv/webrtc_libyuv.cc 
		common_video/i420_buffer_pool.cc 
		common_video/video_frame.cc 
		common_video/incoming_video_stream.cc 
		common_video/video_frame_buffer.cc 
		common_video/video_render_frames.cc
)

set(SOURCES ${SOURCES}
		media/base/mediaconstants.cc 
		media/base/videoadapter.cc 
		media/base/videobroadcaster.cc 
		media/base/videocapturer.cc 
		media/base/videocommon.cc 
		media/base/videoframe.cc 
		media/base/videoframefactory.cc 
		media/base/videosourcebase.cc 
		media/engine/webrtcvideoframe.cc 
		media/engine/webrtcvideoframefactory.cc
)

set(SOURCES ${SOURCES}
		modules/audio_coding/acm2/acm_resampler.cc 
		modules/audio_device/audio_device_impl.cc 
		modules/audio_device/audio_device_buffer.cc 
		modules/audio_device/audio_device_generic.cc 
		modules/audio_device/android/audio_manager.cc 
		modules/audio_device/android/audio_record_jni.cc 
		modules/audio_device/android/audio_track_jni.cc 
		modules/audio_device/android/build_info.cc 
		modules/audio_device/android/opensles_common.cc 
		modules/audio_device/android/opensles_player.cc 
		modules/audio_device/dummy/audio_device_dummy.cc 
		modules/audio_device/fine_audio_buffer.cc 
		modules/utility/source/helpers_android.cc 
		modules/utility/source/jvm_android.cc 
		modules/video_coding/codecs/h264/h264.cc 
		modules/video_coding/codecs/h264/h264_encoder_impl.cc 
		modules/video_coding/codecs/h264/h264_decoder_impl.cc 
		modules/video_coding/utility/h264_bitstream_parser.cc 
		modules/video_coding/utility/quality_scaler.cc
)

set(SOURCES ${SOURCES}
		system_wrappers/source/aligned_malloc.cc 
		system_wrappers/source/atomic32_non_darwin_unix.cc 
        system_wrappers/source/clock.cc 
        system_wrappers/source/cpu_info.cc 
        system_wrappers/source/cpu_features.cc 
        system_wrappers/source/data_log_c.cc 
        system_wrappers/source/event.cc 
        system_wrappers/source/event_timer_posix.cc 
        system_wrappers/source/file_impl.cc 
        system_wrappers/source/logging.cc 
        system_wrappers/source/rtp_to_ntp.cc 
        system_wrappers/source/rw_lock.cc 
        system_wrappers/source/rw_lock_posix.cc 
        system_wrappers/source/sleep.cc 
        system_wrappers/source/sort.cc 
        system_wrappers/source/timestamp_extrapolator.cc 
        system_wrappers/source/trace_impl.cc 
        system_wrappers/source/trace_impl.h 
        system_wrappers/source/trace_posix.cc 
		system_wrappers/source/field_trial_default.cc 
		system_wrappers/source/metrics_default.cc
)

add_library(webrtc STATIC ${SOURCES})

target_include_directories(webrtc PUBLIC
    common_video/include
    common_video/libyuv/include 
    ..
    ../third_party/libyuv/include 
    ../third_party/ffmpeg
	)

# target_link_libraries(webrtc PUBLIC m)
