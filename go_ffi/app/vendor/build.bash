#!/bin/bash
 

export ANDROID_NDK_HOME=/home/xuan/Android/Sdk/ndk-bundle

export GOARCH=arm
export GOOS=android
export CGO_ENABLED=1
export CC=$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/armv7a-linux-androideabi30-clang
go  build -ldflags "-w -s" -trimpath -buildmode=c-shared -o ./libs/armeabi-v7a/libmessage.so .
echo Build armeabi-v7a finish

export GOARCH=arm64
export GOOS=android
export CGO_ENABLED=1
export CC=$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android30-clang
go  build -ldflags "-w -s" -trimpath -buildmode=c-shared -o ./libs/arm64-v8a/libmessage.so .
echo Build arm64-v8a finish

export GOARCH=amd64
export GOOS=android
export CGO_ENABLED=1
export CC=$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/x86_64-linux-android30-clang
go  build -ldflags "-w -s" -trimpath -buildmode=c-shared -o ./libs/x86_64/libmessage.so .
echo Build x86_64 finish


export GOARCH=386
export GOOS=android
export CGO_ENABLED=1
export CC=$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/i686-linux-android30-clang
go build -ldflags "-w -s" -trimpath -buildmode=c-shared -o ./libs/x86/libmessage.so .
echo Build x86 finish
 