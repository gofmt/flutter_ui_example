cmake_minimum_required(VERSION 3.22.1)
project(runner LANGUAGES CXX)
add_library( 
            libgo
            SHARED
            IMPORTED 
)
set_target_properties(
                       libgo
                       PROPERTIES IMPORTED_LOCATION
                       libs/${ANDROID_ABI}/libgo.so 
)
include_directories( libs/${ANDROID_ABI}/ )