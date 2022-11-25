import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

// import 'package:dylib/dylib.dart';
import 'package:ffi/ffi.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as p;


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
typedef GoLibAdd = Pointer<Utf8> Function(Int32 a, Int32 b);
typedef DarFuncAdd = Pointer<Utf8> Function(int a, int b);

////
//libgo.so
typedef GoLibTimes = Pointer<Utf8> Function(
    Pointer<Utf8> times, Int32 star, Int32 door);
//传送数据(String, int,int)到libgo.so并返回 string类型
typedef DarkFuncTimes = Pointer<Utf8> Function(
    Pointer<Utf8> times, int star, int door);

class _FFiExampleState extends State<FFiExample> {
  String strs = '';

  @override
  Widget build(BuildContext context) {
    final DynamicLibrary dylib = Platform.isAndroid
        ? DynamicLibrary.open('libgo.so')
        : DynamicLibrary.process();

    ///
    var armlib = dylib.lookupFunction<GoLibGets, DarkFuncGets>("gets");
    String _json = armlib().toDartString();
    print(
        "arms; $_json"); //I/flutter (30058): arms; {"id":"group id","name":"group name","time":"2022-11-24 12:31:05.662086387 +0000 UTC"}
    Map<String, dynamic> obj_json = json.decode(_json);

    ///
    var addf = dylib.lookupFunction<GoLibAdd, DarFuncAdd>("add");
    var addx = addf(4, 5);
    var s = addx.cast().toString();
    print("s==> $s"); //s==> Pointer<NativeType>: address=0x9

    ///
    var timesf =
        dylib.lookupFunction<GoLibTimes, DarkFuncTimes>("getdate");
    // var nows = DateTime.now().toString();
    // var ns = nows.toString().substring(0, 19).toNativeUtf8();
    // print("nows: $nows --> ns: $ns");
    // final timesStr = timesFunc(ns, 2, 5);
    // final getTimes = timesStr.toDartString();
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
            Text(
              "libgo+",
              style: const TextStyle(fontSize: 26),
            ),
            OutlinedButton(
                onPressed: () {
                  print("object btn on clicked");
                  //strs = libgo.gets() as String;
                  print(
                    "str $strs",
                  );
                  setState(() {
                    strs;
                  });
                },
                child: Text("btn")),
            // Text(strs)
            Text(
              obj_json['time'],
            )
          ],
        )),
      ),
    );
  }
}

// linux desktop

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
// //
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     // linux desktop
//     // final gets = DynamicLibrary.open("./linux/libgets.dll");
//     // final fns = gets.lookupFunction<NativeFunc, DarkFunc>('gets');

//     //-------------------
//     //
//     // final DynamicLibrary nativeAddLib = Platform.isAndroid ? DynamicLibrary.open('libgo.so') : DynamicLibrary.process();
//     // final armlib = nativeAddLib.lookupFunction<NativeFunc, DarkFunc>("gets");

// ////

//     // json 解析方法(简单)
//     // String str = fns().toDartString();
//     // Map<String, dynamic> grp = json.decode(str);
//     //或 json 解析(class)
//     // String str = fns().toDartString();
//     // final strjson = json.decode(str);
//     // Group group = Group.fromJson(strjson);

//     //
//     return MaterialApp(
//       title: 'Flutter dark:ffi Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       //home: const MyHomePage(title: 'Flutter Demo Home Page'),
//       home: Scaffold(
//         body: Center(
//           child: Text(
//             "libgo+",
//             // fns().toDartString(),
//             // grp['time'] + "\n" + fns().toDartString(), //json 简单解析
//             //group.id + group.name + group.time, //json class 方式解析
//             //armlib.toString(),
//             style: const TextStyle(fontSize: 26),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// String _getPath() {
//   final cjsonExamplePath = Directory.current.absolute.path;
//   //var path = p.join(cjsonExamplePath, '../android/libs/armeabi-v7a/');
//   var path = p.join(cjsonExamplePath, '/data/local/tmp');
//   if (Platform.isMacOS) {
//     path = p.join(path, 'libgo.dylib');
//   } else if (Platform.isWindows) {
//     path = p.join(path, 'Debug', 'cjson.dll');
//   } else {
//     path = p.join(path, 'libgo.so');
//   }
//   // if ((Platform.isAndroid) || (Platform.isLinux)) {
//   //   path = p.join(path, 'libgo.so');
//   // }
//   return path;
// }

//final libgo = NativeLibrary(DynamicLibrary.open('libgo.so'));
