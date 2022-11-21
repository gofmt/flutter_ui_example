import 'dart:math';

import 'package:flutter/material.dart';

import 'my_painter.dart';
// flutter: i==0 d= 15.0
// flutter: i==1 d= 45.0
// flutter: i==2 d= 75.0
// flutter: i==3 d= 105.0
// flutter: i==4 d= 135.0
// flutter: i==5 d= 165.0
// flutter: i==6 d= 195.0
// flutter: i==7 d= 225.0
// flutter: i==8 d= 255.0
// flutter: i==9 d= 285.0
// flutter: i==10 d= 315.0
// flutter: i==11 d= 345.0

// flutter: i==15.0 d= 15.0
// flutter: i==45.0 d= 45.0
// flutter: i==75.0 d= 75.0
// flutter: i==105.0 d= 105.0
// flutter: i==135.0 d= 135.0
// flutter: i==165.0 d= 165.0
// flutter: i==195.0 d= 195.0
// flutter: i==225.0 d= 225.0
// flutter: i==255.0 d= 255.0
// flutter: i==285.0 d= 285.0
// flutter: i==315.0 d= 315.0
// flutter: i==345.0 d= 345.0

//返回map类型的坐标值
Future<Map<String, List<Offset>>> getOffsetBuild(double width, double height) async {
  List<Offset> listZi = [];
  List<Offset> listChou = [];
  List<Offset> listYin = [];
  List<Offset> listMao = [];
  List<Offset> listChen = [];
  List<Offset> listSi = [];
  List<Offset> listWu = [];
  List<Offset> listWei = [];
  List<Offset> listShen = [];
  List<Offset> listYou = [];
  List<Offset> listXu = [];
  List<Offset> listHai = [];

  Map<String, List<Offset>> maplist = {};

  ///-------
  List listyou = [1, 2, 3, 4, 5, 6]; //酉宫吉凶总数
  List listhai = [
    '岁德',
    '岁德合',
    '金神',
    '五鬼',
    '太岁',
    '奏书',
    '博士',
  ];

  DR dr = DR();
  double radius = min(width / 2, height / 2);

  ///    var c = Offset(size.width / 2, size.height / 2); //圆心偏移
  double a = 15;
  double xangle = 0;
  for (a; a <= 360; a += 30) {
    double degree = a.toDouble(); //角度
    //print("a==${a ~/ 30} d= $degree");

    switch (a ~/ 30) {
      // 15~45
      case 0:
        for (var i = 0; i < listyou.length; i++) {
          xangle = 30 / listyou.length;
          var xa = xangle * i + degree;
          //   print("$degree len=${listyou.length} => 平均角度==> $xangle i==$i xa=$xa");
          double rs = dr.degreeToRadian(xa);

          double xx1 = -cos(rs) * 120 / pi + width / 2 + radius * cos(rs); //120值越大 坐标越靠近圆心
          double yy1 = -sin(rs) * 120 / pi + height / 2 + radius * sin(rs);
          // print("lstf:$xx1 top:$yy1");
          listZi.add(Offset(xx1, yy1));
        }
        maplist['戌'] = listZi;
        break;
      // 45+30
      case 1:
        for (var i = 0; i < listhai.length; i++) {
          xangle = 30 / listhai.length;
          var xa = xangle * i + degree;
          print("$degree len=${listyou.length} => 平均角度==> $xangle i==$i xa=$xa");
          double rs = dr.degreeToRadian(xa);

          double xx1 = -cos(rs) * 120 / pi + width / 2 + radius * cos(rs); //120值越大 坐标越靠近圆心
          double yy1 = -sin(rs) * 120 / pi + height / 2 + radius * sin(rs);
          listHai.add(Offset(xx1, yy1));
        }
        maplist['亥'] = listHai;
        break;
      //75+30
      case 2:
        for (var i = 0; i < listyou.length; i++) {
          xangle = 30 / listyou.length;
          var xa = xangle * i + degree;
          // print("$degree len=${listyou.length} => 平均角度==> $xangle i==$i xa=$xa");
          double rs = dr.degreeToRadian(xa);

          double xx1 = -cos(rs) * 120 / pi + width / 2 + radius * cos(rs); //120值越大 坐标越靠近圆心
          double yy1 = -sin(rs) * 120 / pi + height / 2 + radius * sin(rs);
          listZi.add(Offset(xx1, yy1));
        }
        maplist['子'] = listZi;
        break;
    }
  }
  // print("maplist zi ==> ${maplist['子']}");
  return maplist;
}

/// 圆
class ShowText2 extends CustomPainter {
  double width;
  double height;
  double font;
  List listyou = [1, 2, 3, 4, 5, 6]; //酉宫吉凶总数
  List listxu = [4, 5, 6]; //

  late List<Offset> offset0 = []; //15.0~15+30
  late List<Offset> offset1 = []; //45.0~45+30
  late double radius;
  List<Offset> offsetXy = [];

  late double angle;
  late double borderWidth;
  late List<int> angles = [];
  DR dr = DR();

  ShowText2(
    this.width,
    this.height,
    this.font, {
    this.radius = 0.0,
  }) {
    radius = min(width / 2, height / 2);
    borderWidth = radius / 14;
    final secondDistance = radius - borderWidth * 2;

    // for (var i = 0; i < 45; i++) {
    //   angles.add(i * 8);
    //   Offset offset = Offset(
    //     cos(dr.degreeToRadian(8 * i.toDouble())) * secondDistance + radius,
    //     sin(dr.degreeToRadian(8 * i.toDouble())) * secondDistance + radius,
    //   );
    //   offsetXy.add(offset);
    // }

    // textPainter = TextPainter(
    //   textAlign: TextAlign.center,
    //   textDirection: TextDirection.rtl,
    // );
    // angle = dr.degreeToRadian(360 / 45);
  }

  @override
  void paint(Canvas canvas, Size size) {
    //-------------------------
    var c = Offset(size.width / 2, size.height / 2); //圆心偏移
    double a = 15;
    double xangle = 0;
    for (a; a <= 360; a += 30) {
      double degree = a.toDouble(); //角度
      //print("a==${a ~/ 30} d= $degree");

      switch (a ~/ 30) {
        case 0:
          for (var i = 0; i < listyou.length; i++) {
            xangle = degree / listyou.length;
            print(" $degree len=${listyou.length} => 平均角度==> $xangle");
            var xa = xangle * i + degree;
            //print("i==$i xa=$xa");
            double rs = dr.degreeToRadian(xa);
            double xx1 = width / 2 + radius * cos(rs);
            double yy1 = height / 2 + radius * sin(rs);
            // print("lstf:$xx1 top:$yy1");

          }

          break;
        case 1:
          break;
      }

      // double radians = dr.degreeToRadian(degree); // 弧度
      // double x1 = width / 2 + radius * cos(radians); // left
      // double y1 = height / 2 + radius * sin(radians); // top
      // Offset offset = Offset(x1, y1);
      //angle = dr.degreeToRadian(360 / 30);

    }
  }
  //////////////////////

  // for (var i = 0; i < offsetXy.length; i++) {
  //   // canvas.save();
  //   // canvas.translate(0.0, -radius + borderWidth * 1.5); // *数字 数字决定了x1，y1
  //   switch (angles[i]) {
  //     // 9 离 (angles[i] == 352 || angles[i] == 0 || angles[i] == 8 || angles[i] == 16)
  //     case 0:
  //       textPainter.text = TextSpan(
  //         text: "${angles[i]}",
  //         style: TextStyle(color: Colors.white, fontSize: font),
  //         // children: [
  //         //   TextSpan(
  //         //     text: "\n${mapTg[9]}",
  //         //     style: TextStyle(color: const Color.fromARGB(235, 243, 65, 228), fontSize: font),
  //         //   )
  //         // ],
  //       );
  //       // textPainter.layout();
  //       // textPainter.paint(
  //       //   canvas,
  //       //   Offset(-(textPainter.width / 2), -(textPainter.height / 2)),
  //       // );
  //       break;
  //     // 2 坤 (angles[i] == 32 || angles[i] == 40 || angles[i] == 48 || angles[i] == 56)
  //     case 48:
  //       textPainter.text = TextSpan(
  //         text: "${angles[i]}",
  //         style: TextStyle(color: Colors.white, fontSize: font),
  //         // children: [
  //         //   TextSpan(
  //         //     text: "\n${mapTg[2]}",
  //         //     style: TextStyle(color: const Color.fromARGB(235, 243, 65, 228), fontSize: font),
  //         //   )
  //         // ],
  //       );
  //       // textPainter.layout();
  //       // textPainter.paint(
  //       //   canvas,
  //       //   Offset(-(textPainter.width / 2), -(textPainter.height / 2)),
  //       // );
  //       break;
  //     // //7 兑 (angles[i] == 80 || angles[i] == 88 || angles[i] == 96 || angles[i] == 104)
  //     // case 88:
  //     //   textPainter.text = TextSpan(
  //     //     text: mapJx[7], //"${angles[i]}",
  //     //     style: TextStyle(color: Colors.white, fontSize: font),
  //     //     children: [
  //     //       TextSpan(
  //     //         text: "\n${mapTg[7]}",
  //     //         style: TextStyle(color: const Color.fromARGB(235, 243, 65, 228), fontSize: font),
  //     //       )
  //     //     ],
  //     //   );
  //     //   textPainter.layout();
  //     //   textPainter.paint(
  //     //     canvas,
  //     //     Offset(-(textPainter.width / 2), -(textPainter.height / 2)),
  //     //   );
  //     //   break;
  //     // // 6 乾 (angles[i] == 120 || angles[i] == 128 || angles[i] == 136 || angles[i] == 144)
  //     // case 128 + 8:
  //     //   textPainter.text = TextSpan(
  //     //     text: mapJx[6], //"${angles[i]}",
  //     //     style: TextStyle(color: Colors.white, fontSize: font),
  //     //     children: [
  //     //       TextSpan(
  //     //         text: "\n${mapTg[6]}",
  //     //         style: TextStyle(color: const Color.fromARGB(235, 243, 65, 228), fontSize: font),
  //     //       )
  //     //     ],
  //     //   );
  //     //   textPainter.layout();
  //     //   textPainter.paint(
  //     //     canvas,
  //     //     Offset(-(textPainter.width / 2), -(textPainter.height / 2)),
  //     //   );
  //     //   break;
  //     // // 1坎 (angles[i] == 168 || angles[i] == 176 || angles[i] == 184 || angles[i] == 192)
  //     // case 176:
  //     //   textPainter.text = TextSpan(
  //     //     text: mapJx[1], //"${angles[i]}",
  //     //     style: TextStyle(color: Colors.white, fontSize: font),
  //     //     children: [
  //     //       TextSpan(
  //     //         text: "\n${mapTg[1]}",
  //     //         style: TextStyle(color: const Color.fromARGB(235, 243, 65, 228), fontSize: font),
  //     //       )
  //     //     ],
  //     //   );
  //     //   canvas.rotate(-angle * i);
  //     //   textPainter.layout();
  //     //   textPainter.paint(
  //     //     canvas,
  //     //     Offset(-(textPainter.width / 2), -(textPainter.height / 2)),
  //     //   );
  //     //   break;
  //     // // 8艮 (angles[i] == 216 || angles[i] == 224 || angles[i] == 232 || angles[i] == 240)
  //     // case 224:
  //     //   textPainter.text = TextSpan(
  //     //     text: mapJx[8], // "${angles[i]}",
  //     //     style: TextStyle(color: Colors.white, fontSize: font),
  //     //     children: [
  //     //       TextSpan(
  //     //         text: "\n${mapTg[8]}",
  //     //         style: TextStyle(color: const Color.fromARGB(235, 243, 65, 228), fontSize: font),
  //     //       )
  //     //     ],
  //     //   );
  //     //   //canvas.rotate(-angle * i + 70);
  //     //   textPainter.layout();
  //     //   textPainter.paint(
  //     //     canvas,
  //     //     Offset(-(textPainter.width / 2), -(textPainter.height / 2)),
  //     //   );
  //     //   break;
  //     // // 3震  (angles[i] == 256 || angles[i] == 264 || angles[i] == 272 || angles[i] == 280)
  //     // case 264 + 8:
  //     //   textPainter.text = TextSpan(
  //     //     text: mapJx[3], //"${angles[i]}",
  //     //     style: TextStyle(color: Colors.white, fontSize: font),
  //     //     children: [
  //     //       TextSpan(
  //     //         text: "\n${mapTg[3]}",
  //     //         style: TextStyle(color: const Color.fromARGB(235, 243, 65, 228), fontSize: font),
  //     //       )
  //     //     ],
  //     //   );
  //     //   textPainter.layout();
  //     //   textPainter.paint(
  //     //     canvas,
  //     //     Offset(-(textPainter.width / 2), -(textPainter.height / 2)),
  //     //   );
  //     //   break;
  //     // // 4巽 (angles[i] == 304 || angles[i] == 312 || angles[i] == 320 || angles[i] == 328)
  //     // case 312:
  //     //   textPainter.text = TextSpan(
  //     //     text: mapJx[4], //"${angles[i]}",
  //     //     style: TextStyle(color: Colors.white, fontSize: font),
  //     //     children: [
  //     //       TextSpan(
  //     //         text: "\n${mapTg[4]}",
  //     //         style: TextStyle(color: const Color.fromARGB(235, 243, 65, 228), fontSize: font),
  //     //       )
  //     //     ],
  //     //   );

  //     //   textPainter.layout();
  //     //   textPainter.paint(
  //     //     canvas,
  //     //     Offset(-(textPainter.width / 2), -(textPainter.height / 2)),
  //     //   );
  //     //   break;
  //   }

  //   ///绘制文本到以上这里
  //   canvas.restore();
  //   canvas.rotate(angle); //添加角度旋转
  // }
  // canvas.restore();

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

// //传入数组长度(年表某个宫位数组 比如酉宫吉凶共计9个)  角度 宽 高 半径
//   makeoffset(listx, degree, width, height, radius) {
//     //
//     late List<Offset> offsetx = [];
//     for (var i = 0; i < listx.length; i++) {
//       double xangle = degree / listx.length;
//       // print(" $degree len=${listx.length} => 平均角度==> $xangle");
//       var xa = xangle * i + degree;
//       // print("i==$i xa=$xa");
//       double rs = degreeToRadian(xa);
//       double xx1 = width / 2 + radius * cos(rs);
//       double yy1 = height / 2 + radius * sin(rs);
//       // print("lstf:$xx1 top:$yy1");
//       offsetx.add(Offset(xx1, yy1));
//       ////
//       // text.add(Text('$xx1 $yy1'));

//     }

//   return offsetx;
// }
