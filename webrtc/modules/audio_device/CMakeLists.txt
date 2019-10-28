
set(HDRS
    audio_device\include\audio_device.h
    audio_device\include\audio_device_defines.h
    audio_device\audio_device_buffer.h
    audio_device\audio_device_generic.h
    audio_device\audio_device_config.h
    audio_device\dummy\audio_device_dummy.h
    audio_device\dummy\file_audio_device.h
    audio_device\fine_audio_buffer.h
    audio_device\dummy\file_audio_device_factory.h
    audio_device\audio_device_impl.h
    audio_device\win\audio_device_core_win.h
    audio_device\win\audio_device_wave_win.h
    audio_device\win\audio_mixer_manager_win.h
    )

set(SRCS     
    audio_device\audio_device_buffer.cc
    audio_device\audio_device_generic.cc
    audio_device\dummy\audio_device_dummy.cc
    audio_device\fine_audio_buffer.cc
    audio_device\audio_device_impl.cc
    audio_device\win\audio_device_core_win.cc
    audio_device\win\audio_device_wave_win.cc
    audio_device\win\audio_mixer_manager_win.cc
    )

add_library (audio_device STATIC ${SRCS} ${HDRS})

target_include_directories (audio_device PUBLIC
  .
)

#target_link_libraries(audio_device
#  
#)