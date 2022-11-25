import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysample/paint/text_paint.dart';

import 'my_painter.dart';

class ExamplePaint extends StatefulWidget {
  const ExamplePaint({super.key});

  @override
  State<ExamplePaint> createState() => _ExamplePaintState();
}

class _ExamplePaintState extends State<ExamplePaint> {
  Map<String, List<Offset>> xmap = {};
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var wh = min(size.width, size.height);

    ///使用启用下面两行
    // Map<String, List<Offset>> xmap = getOffset(size.width, size.height);
    // xmap['子'] ??= [Offset(589.8, 477.6), Offset(586.1, 490.2), Offset(581.9, 502.6), Offset(577.2, 514.8), Offset(571.9, 526.8), Offset(566.1, 538.5)];

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Stack(
            children: [
              SizedBox(
                width: wh, //size.width,
                height: wh, //size.height - 60,
                child: CustomPaint(
                  painter: MyPainter(),
                ),
              ),

              FutureBuilder(
                //future: getOffsetBuild(size.width, size.height - 60),
                future: getOffsetBuild(wh, wh),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.data == null) {
                      return Text('');
                    }
                    xmap = snapshot.data!;
                    return SizedBox(
                      width: wh, //size.width,
                      height: wh, //size.height - 60,
                      child: Stack(children: []),
                    );
                  } else {
                    return const CupertinoDialogAction(child: Text('正在等待....'));
                  }
                },
              ),

              // FutureBuilder(
              //   future: hai(xmap),
              //   builder: (context, snapshot) {
              //     if (snapshot.connectionState == ConnectionState.done) {
              //       if (snapshot.data == null) {
              //         return Text('');
              //       }
              //       var list = snapshot.data;
              //       return SizedBox(
              //         width: size.width,
              //         height: size.height,
              //         child: list,
              //       );
              //     } else {
              //       return Text('');
              //     }
              //   },
              // ),

              SizedBox(
                width: wh, //size.width,
                height: wh, // size.height - 60,
                child: showZi(xmap),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget showZi(Map<String, List<Offset>> xmap) {
    xmap['亥'] ??= [Offset(589.8, 477.6), Offset(586.1, 490.2), Offset(581.9, 502.6), Offset(577.2, 514.8), Offset(571.9, 526.8), Offset(566.1, 538.5)];
    List listhai = [
      '岁德',
      '岁德合',
      '金神',
      '五鬼',
      '太岁',
      '奏书',
      '博士',
    ];
    List<Widget> items = [];
    List<Offset> offsetHai = xmap['亥']!;

    for (var i = 0; i < offsetHai.length; i++) {
      items.add(
        Positioned(
          left: offsetHai[i].dx,
          top: offsetHai[i].dy,
          child: Text("${listhai[i]}"),
        ),
      );
    }
    // setState(() {
    //   items;
    // });
    print(items);
    Widget item = Stack(
      children: items,
    );
    //  print("item --> $item"); // Stack(alignment: AlignmentDirectional.topStart, fit: loose)
    return item;
  }
}

Future<Widget> hai(Map xmap) async {
  xmap['子'] ??= [Offset(589.8, 477.6), Offset(586.1, 490.2), Offset(581.9, 502.6), Offset(577.2, 514.8), Offset(571.9, 526.8), Offset(566.1, 538.5)];
  List listhai = [
    '岁德',
    '岁德合',
    '金神',
    '五鬼',
    '太岁',
    '奏书',
    '博士',
  ];
  print("xmap == $xmap");
  List<Widget> items = [];
  List<Offset> offsetZi = xmap['亥']!;
  Widget item;
  for (var i = 0; i < offsetZi.length; i++) {
    // print(listhai[i]);
    items.add(
      Positioned(
        left: offsetZi[i].dx,
        top: offsetZi[i].dy,
        child: Text(offsetZi[i].toString()),
        // child: Text("${listhai[i]}"),
      ),
    );
  }

  item = Stack(
    children: items,
  );

  return item;
}

/// 配合 Widget showZi(Map<String, List<Offset>> xmap) 函数可以实现和Future同样的效果
// getOffset(double width, double height) {
//   List<Offset> listZi = [];

//   Map<String, List<Offset>> maplist = {};

//   ///-------
//   List listyou = [1, 2, 3, 4, 5, 6]; //酉宫吉凶总数

//   DR dr = DR();
//   double radius = min(width / 2, height / 2);

//   ///    var c = Offset(size.width / 2, size.height / 2); //圆心偏移
//   double a = 15;
//   double xangle = 0;
//   for (a; a <= 360; a += 30) {
//     double degree = a.toDouble(); //角度
//     //print("a==${a ~/ 30} d= $degree");

//     switch (a ~/ 30) {
//       case 0:
//         for (var i = 0; i < listyou.length; i++) {
//           xangle = degree / listyou.length;
//           //print(" $degree len=${listyou.length} => 平均角度==> $xangle");
//           var xa = xangle * i + degree;
//           //print("i==$i xa=$xa");
//           double rs = dr.degreeToRadian(xa);
//           double xx1 = width / 2 + radius * cos(rs);
//           double yy1 = height / 2 + radius * sin(rs);
//           // print("lstf:$xx1 top:$yy1");

//           listZi.add(Offset(xx1, yy1));
//         }
//         maplist['子'] = listZi;

//         break;
//       case 1:
//         break;
//     }
//   }
//   print("maplist zi ==> ${maplist['子']}");
//   return maplist;
// }
