
set(HDRS
    base\codec.h
    base\videoadapter.h
    base\videobroadcaster.h
    base\videocapturer.h
    base\videocommon.h
    base\videoframe.h
    base\videoframefactory.h
    engine\webrtcvideodecoderfactory.h
    engine\webrtcvideoencoderfactory.h
    engine\webrtcvideoframe.h
    engine\webrtcvideoframefactory.h
    )

set(SRCS     
    base\codec.cc
    base\videoadapter.cc
    base\videobroadcaster.cc
    base\videocapturer.cc
    base\videocommon.cc
    base\videoframe.cc
    base\videoframefactory.cc
    base\videosourcebase.cc
    engine\webrtcvideocapturer.cc
    engine\webrtcvideocapturerfactory.cc
    engine\webrtcvideoframe.cc
    engine\webrtcvideoframefactory.cc
    )

add_library (rtc_media STATIC ${SRCS} ${HDRS})

target_include_directories (rtc_media PUBLIC
  .
)

#target_link_libraries(rtc_media
#  
#)