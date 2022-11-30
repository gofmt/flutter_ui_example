import 'dart:ffi' as ffi; // For FFI

import 'package:ffi/ffi.dart';

typedef CreateMessageFunctionTemplate = ffi.Pointer<Utf8> Function(ffi.Pointer<Utf8> message);

typedef CreateMessage = CreateMessageFunctionTemplate;

final dylib = ffi.DynamicLibrary.open('libmessage.so');

final CreateMessage dylibmessage = dylib.lookup<ffi.NativeFunction<CreateMessageFunctionTemplate>>('CreateMessage').asFunction();
//
//final dylib = ffi.DynamicLibrary.open('./vendor/out/text.a');
void createMessage(String text) {
  dylibmessage(text.toNativeUtf8());
}
