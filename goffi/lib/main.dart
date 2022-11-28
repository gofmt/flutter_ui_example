import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  runApp(const FFiExample());
}

class FFiExample extends StatefulWidget {
  const FFiExample({super.key});

  @override
  State<FFiExample> createState() => _FFiExampleState();
}

typedef GoLibGets = Pointer<Utf8> Function();
typedef DarkFuncGets = Pointer<Utf8> Function();

//add
typedef GoLibAdd = Int32 Function(Int32 a, Int32 b, Int32 c);
typedef DarFuncAdd = int Function(int a, int b, int c);

//
typedef GoLibTimes = Pointer<Utf8> Function(Pointer<Utf8> times, Int32 star, Int32 door);
//
typedef DarkFuncTimes = Pointer<Utf8> Function(Pointer<Utf8> times, int star, int door);

//
typedef GoLibType = Pointer<Utf8> Function(Pointer<Utf8> str);
typedef DarkFuncType = Pointer<Utf8> Function(Pointer<Utf8> str);

//
class _FFiExampleState extends State<FFiExample> {
  String strs = '';

  @override
  Widget build(BuildContext context) {
    if (Platform.isLinux) {
      final DynamicLibrary dynamicLibrary = DynamicLibrary.open('./golib/libgo.a');
      var typef = dynamicLibrary.lookupFunction<GoLibType, DarkFuncType>('DartGoType');

      String str = DateTime.now().toLocal().toString().substring(0, 19);
      var stru8 = str.toNativeUtf8();
      var res = typef(stru8);
      var dars = res.toDartString();
      print("gostr to dartstr: $dars");
      //
      // malloc.free(stru8);
    } else if (Platform.isAndroid) {
      final DynamicLibrary dylib = Platform.isAndroid ? DynamicLibrary.open('libgo.so') : DynamicLibrary.process();
      // var armlib = dylib.lookupFunction<GoLibGets, DarkFuncGets>("gets");
      // String _json = armlib().toDartString();
      // //print("jsonobj: $_json");
      // Map<String, dynamic> obj_json = json.decode(_json);

      ///
      var addf = dylib.lookupFunction<GoLibAdd, DarFuncAdd>("add");
      var addx = addf(11, 11, 11);
      var s = addx.toInt();
      print("add ==> $s");
      //
      //
      var timesf = dylib.lookupFunction<GoLibTimes, DarkFuncTimes>("GetDate");
      var times = DateTime.now().toLocal().toString().substring(0, 19).toNativeUtf8();
      ;
      final timesStr = timesf(times, 0, 2);
      strs = timesStr.toDartString();
      print("gettimes ==> $strs");

      // malloc.free(timesf(nt8,9,5));
    }

    //
    return MaterialApp(
      title: 'Flutter dark:ffi Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
            child: Column(
          children: [
            const Text(
              "ffi libgo",
              style: TextStyle(fontSize: 26),
            ),
            OutlinedButton(
                onPressed: () {
                  print("object btn on clicked $strs");

                  setState(() {
                    strs;
                  });
                },
                child: const Text("btn")),
            // Text(strs)
            Text(strs)
          ],
        )),
      ),
    );
  }
}
