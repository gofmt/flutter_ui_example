cmake_minimum_required(VERSION 3.22.1)
project(runner LANGUAGES CXX)
add_library(libmessage
		INTERFACE
		IMPORTED
)
target_include_directories(libmessage
		INTERFACE libs/${ANDROID_ABI}
)
target_link_directories(libmessage
		INTERFACE libs/${ANDROID_ABI}
)
target_link_libraries(libmessage
		INTERFACE libs/${ANDROID_ABI}/libmessage.so)
