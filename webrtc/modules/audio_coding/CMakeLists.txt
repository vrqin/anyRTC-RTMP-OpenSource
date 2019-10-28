
set(HDRS
    include\audio_device.h
    include\audio_device_defines.h
    audio_device_buffer.h
    audio_device_generic.h
    audio_device_config.h
    dummy\audio_device_dummy.h
    dummy\file_audio_device.h
    fine_audio_buffer.h
    dummy\file_audio_device_factory.h
    audio_device_impl.h
    win\audio_device_core_win.h
    win\audio_device_wave_win.h
    win\audio_mixer_manager_win.h
    )

set(SRCS     
    audio_device_buffer.cc
    audio_device_generic.cc
    dummy\audio_device_dummy.cc
    fine_audio_buffer.cc
    audio_device_impl.cc
    win\audio_device_core_win.cc
    win\audio_device_wave_win.cc
    win\audio_mixer_manager_win.cc
    )

add_library (audio_coding_module STATIC ${SRCS} ${HDRS})

target_include_directories (audio_coding_module PUBLIC
  .
)

#target_link_libraries(audio_coding_module
#  
#)