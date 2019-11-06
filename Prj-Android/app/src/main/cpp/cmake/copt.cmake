include(CheckCCompilerFlag)
check_c_compiler_flag(-fPIC C_HAS_PIC)
check_c_compiler_flag(-Wall C_HAS_WARN_ALL)
check_c_compiler_flag(-pthread C_HAS_PTHREAD)

IF(C_HAS_WARN_ALL)
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall")
ENDIF()

IF(C_HAS_PIC)
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC")
ENDIF()


IF(C_HAS_PTHREAD)
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -pthread")
ENDIF()

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -fPIC -pthread")

#set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -g")
#set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -O2 -DNDEBUG")
