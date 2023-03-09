import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ExampleGridView extends StatefulWidget {
  const ExampleGridView({super.key});

  @override
  State<ExampleGridView> createState() => _ExampleGridViewState();
}

class _ExampleGridViewState extends State<ExampleGridView> {
  double font = 19.0;
  @override
  Widget build(BuildContext context) {
    final widthx = MediaQuery.of(context).size.width; //宽度
    return Scaffold(
      appBar: AppBar(
        title: Text('九宫格'),
        centerTitle: true,
      ),
      body: Table(
        border: TableBorder.all(),
        // defaultVerticalAlignment: TableCellVerticalAlignment.top,
        //
        columnWidths: <int, TableColumnWidth>{
          0: FixedColumnWidth(widthx * 0.333),
          1: FixedColumnWidth(widthx * 0.333),
          2: FixedColumnWidth(widthx * 0.333)
        },
        children: [
          // 上三行 巽 离 坤
          TableRow(
            children: [
              //4 巽
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Table(
                  columnWidths: <int, TableColumnWidth>{
                    0: FixedColumnWidth(widthx * 0.1),
                    1: FixedColumnWidth(widthx * 0.2)
                  },
                  children: [
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          softWrap: false, //禁止文字自动换行
                          text: TextSpan(
                            text: "八神4",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八神 on clicked...");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            softWrap: false,
                            text: TextSpan(
                                text: "五行",
                                style: TextStyle(fontSize: font, color: Colors.black),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      )
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "九星",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("star clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "天盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("天盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "八门",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八门 on clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "地盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("地盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "暗干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("暗干-宫内克应 clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            softWrap: false,
                            text: TextSpan(
                                text: "巽",
                                style: TextStyle(fontSize: font - 6, color: Colors.green),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      ),
                    ]),
                  ],
                ),
              ),
              //离
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Table(
                  columnWidths: <int, TableColumnWidth>{
                    0: FixedColumnWidth(widthx * 0.1),
                    1: FixedColumnWidth(widthx * 0.2)
                  },
                  children: [
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "八神",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八神 on clicked...");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            softWrap: false,
                            text: TextSpan(
                                text: "五行",
                                style: TextStyle(fontSize: font, color: Colors.black),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      )
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "九星",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("star clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "天盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("天盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "八门",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八门 on clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "地盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("地盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "暗干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("暗干-宫内克应 clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            softWrap: false,
                            text: TextSpan(
                                text: "离",
                                style: TextStyle(fontSize: font - 6, color: Colors.red),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      ),
                    ]),
                  ],
                ),
              ),
              // 坤
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Table(
                  columnWidths: <int, TableColumnWidth>{
                    0: FixedColumnWidth(widthx * 0.1),
                    1: FixedColumnWidth(widthx * 0.2)
                  },
                  children: [
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "八神",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八神 on clicked...");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            softWrap: false,
                            text: TextSpan(
                                text: "五行",
                                style: TextStyle(fontSize: font, color: Colors.black),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      )
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "九星",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("star clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "天盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("天盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "八门",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八门 on clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "地盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("地盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          softWrap: false,
                          text: TextSpan(
                            text: "暗干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("暗干-宫内克应 clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            softWrap: false,
                            text: TextSpan(
                                text: "坤",
                                style: TextStyle(fontSize: font - 6, color: Colors.black),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
          //中三行 震 中 兑
          TableRow(
            children: [
              //震
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Table(
                  ///设置表内每一列的宽度 0第一列 1第二列
                  columnWidths: <int, TableColumnWidth>{
                    0: FixedColumnWidth(widthx * 0.1),
                    1: FixedColumnWidth(widthx * 0.2)
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  // border: TableBorder.all(color: Colors.red, width: 2),//边框
                  children: [
                    TableRow(children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.top,
                        child: RichText(
                          text: TextSpan(
                            text: "八神3",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八神 on clicked...");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            text: TextSpan(
                                text: "五行3",
                                style: TextStyle(fontSize: font, color: Colors.black),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      )
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "九星3",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("star clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "天盘干3",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("天盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "八门3",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八门 on clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "地盘干3",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("地盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "暗干3",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("暗干-宫内克应 clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            text: TextSpan(
                                text: "震3",
                                style: TextStyle(fontSize: font - 6, color: Color.fromARGB(255, 23, 129, 60)),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      ),
                    ]),
                  ],
                ),
              ),
              // 中
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Table(
                  columnWidths: <int, TableColumnWidth>{
                    0: FixedColumnWidth(widthx * 0.1),
                    1: FixedColumnWidth(widthx * 0.2)
                  },
                  children: [
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "八神",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八神 on clicked...");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            text: TextSpan(
                                text: "五行",
                                style: TextStyle(fontSize: font, color: Colors.black),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      )
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "九星",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("star clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "天盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("天盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "八门",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八门 on clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "地盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("地盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "暗干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("暗干-宫内克应 clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            text: TextSpan(
                                text: "中",
                                style: TextStyle(fontSize: font - 6, color: Color.fromARGB(255, 200, 26, 219)),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      ),
                    ]),
                  ],
                ),
              ),
              // 兑
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Table(
                  columnWidths: <int, TableColumnWidth>{
                    0: FixedColumnWidth(widthx * 0.1),
                    1: FixedColumnWidth(widthx * 0.2)
                  },
                  children: [
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "八神",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八神 on clicked...");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            text: TextSpan(
                                text: "五行",
                                style: TextStyle(fontSize: font, color: Colors.black),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      )
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "九星",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("star clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "天盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("天盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "八门",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八门 on clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "地盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("地盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "暗干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("暗干-宫内克应 clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            text: TextSpan(
                                text: "兑",
                                style: TextStyle(fontSize: font - 6, color: Color.fromARGB(255, 232, 221, 7)),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
          //下三行 艮 坎 乾
          TableRow(
            children: [
              //艮
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Table(
                  children: [
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "八神",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八神 on clicked...");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            text: TextSpan(
                                text: "五行",
                                style: TextStyle(fontSize: font, color: Colors.black),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      )
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "九星",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("star clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "天盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("天盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "八门",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八门 on clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "地盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("地盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "暗干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("暗干-宫内克应 clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            text: TextSpan(
                                text: "艮",
                                style: TextStyle(fontSize: font - 6, color: Color.fromARGB(255, 232, 206, 6)),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      ),
                    ]),
                  ],
                ),
              ),
              // 坎
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Table(
                  children: [
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "八神",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八神 on clicked...");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            text: TextSpan(
                                text: "五行",
                                style: TextStyle(fontSize: font, color: Colors.black),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      )
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "九星",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("star clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "天盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("天盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "八门",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八门 on clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "地盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("地盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "暗干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("暗干-宫内克应 clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            text: TextSpan(
                                text: "坎",
                                style: TextStyle(fontSize: font - 6, color: Colors.black),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      ),
                    ]),
                  ],
                ),
              ),
              // 乾
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Table(
                  children: [
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "八神",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八神 on clicked...");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            text: TextSpan(
                                text: "五行",
                                style: TextStyle(fontSize: font, color: Colors.black),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      )
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "九星",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("star clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "天盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("天盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "八门",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("八门 on clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "地盘干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("地盘干 clicked");
                              },
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: RichText(
                          text: TextSpan(
                            text: "暗干",
                            style: TextStyle(fontSize: font, color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("暗干-宫内克应 clicked");
                              },
                          ),
                        ),
                      ),
                      TableCell(
                        child: RichText(
                            text: TextSpan(
                                text: "乾",
                                style: TextStyle(fontSize: font - 6, color: Color.fromARGB(255, 7, 50, 225)),
                                recognizer: TapGestureRecognizer()..onTap = () {})),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
