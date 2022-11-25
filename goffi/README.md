# goffi
Project Root (goffi)

## andriod_ffi_config_files

### goffi/android
- cat local.properties 
```text
sdk.dir=/home/user/Android/Sdk
ndk.dir=/home/user/Android/Sdk/ndk/21.1.6352462
cmake.dir=/home/user/Android/Sdk/cmake/3.22.1
flutter.sdk=/home/user/flutter
flutter.buildMode=debug
flutter.versionName=1.0.0
```

### goffi/android/app
- cat CMakeLists.txt
```text
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
```

### goffi/android/app
- cat build.gradle
```text
android {...}
    //ndkVersion flutter.ndkVersion
    ndkVersion '21.1.6352462'

    sourceSets {
        main.java.srcDirs += 'src/main/kotlin'
		main.jniLibs.srcDirs = ['libs'] //libgo.so
    }

    // Encapsulates your external native build configurations.
    externalNativeBuild {
        // Encapsulates your CMake build configurations.
        cmake {
          // Provides a relative path to your CMake build script.
          path "CMakeLists.txt"
        }
    }
```

### /goffi/android/app
- tree libs/
```text
libs/
├── arm64-v8a
│   ├── libgo.h
│   └── libgo.so
├── armeabi-v7a
│   ├── libgo.h
│   └── libgo.so
├── x86
│   ├── libgo.h
│   └── libgo.so
└── x86_64
    ├── libgo.h
    └── libgo.so
```

---

## libgo_project
- ls golib/
```
bin  build.bash  go.mod  libgets.h  libgets.so  main.go
```
