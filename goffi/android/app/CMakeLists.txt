cmake_minimum_required(VERSION 3.22.1)  # for example sdk_cmake_version
project(runner LANGUAGES CXX)
add_library( libgo
             SHARED
             IMPORTED 
)
set_target_properties( # Specifies the target library.
                       libgo
                       # Specifies the parameter you want to define.
                       PROPERTIES IMPORTED_LOCATION

                       # Provides the path to the library you want to import.
                       libs/${ANDROID_ABI}/libgo.so 
)
include_directories( libs/${ANDROID_ABI}/ )

#target_link_libraries(libgo app-glue )