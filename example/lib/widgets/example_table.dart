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
        //确定此表各列的水平范围。
        // columnWidths: const <int, TableColumnWidth>{
        //   0: IntrinsicColumnWidth(),
        //   1: FlexColumnWidth(),
        //   2: IntrinsicColumnWidth(), //FixedColumnWidth(64),
        // },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          // 上三行 巽 离 坤
          TableRow(
            children: [
              //4 巽
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

// class _ExampleGridViewState extends State<ExampleGridView> {
//   @override
//   Widget build(BuildContext context) {
//     return Table(
//       border: TableBorder.all(),
//       //确定此表各列的水平范围。
//       // columnWidths: const <int, TableColumnWidth>{
//       //   0: IntrinsicColumnWidth(),
//       //   1: FlexColumnWidth(),
//       //   2: IntrinsicColumnWidth(), //FixedColumnWidth(64),
//       // },
//       defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//       children: [
//         TableRow(
//           children: [
//             TableCell(
//               verticalAlignment: TableCellVerticalAlignment.middle,
//               child: Table(
//                 children: [
//                   TableRow(children: [TableCell(child: Text('八神', style: TextStyle(fontSize: 13))), TableCell(child: Text('五行', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('九星', style: TextStyle(fontSize: 13))), TableCell(child: Text('天盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('八门', style: TextStyle(fontSize: 13))), TableCell(child: Text('地盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('暗干', style: TextStyle(fontSize: 13))), TableCell(child: Text('number', style: TextStyle(fontSize: 13)))]),
//                 ],
//               ),
//             ),
//             TableCell(
//               verticalAlignment: TableCellVerticalAlignment.middle,
//               child: Table(
//                 children: [
//                   TableRow(children: [TableCell(child: Text('八神', style: TextStyle(fontSize: 13))), TableCell(child: Text('五行', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('九星', style: TextStyle(fontSize: 13))), TableCell(child: Text('天盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('八门', style: TextStyle(fontSize: 13))), TableCell(child: Text('地盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('暗干', style: TextStyle(fontSize: 13))), TableCell(child: Text('number', style: TextStyle(fontSize: 13)))]),
//                 ],
//               ),
//             ),
//             TableCell(
//               verticalAlignment: TableCellVerticalAlignment.middle,
//               child: Table(
//                 children: [
//                   TableRow(children: [TableCell(child: Text('八神', style: TextStyle(fontSize: 13))), TableCell(child: Text('五行', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('九星', style: TextStyle(fontSize: 13))), TableCell(child: Text('天盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('八门', style: TextStyle(fontSize: 13))), TableCell(child: Text('地盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('暗干', style: TextStyle(fontSize: 13))), TableCell(child: Text('number', style: TextStyle(fontSize: 13)))]),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         TableRow(
//           children: [
//             TableCell(
//               verticalAlignment: TableCellVerticalAlignment.middle,
//               child: Table(
//                 children: [
//                   TableRow(children: [TableCell(child: Text('八神', style: TextStyle(fontSize: 13))), TableCell(child: Text('五行', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('九星', style: TextStyle(fontSize: 13))), TableCell(child: Text('天盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('八门', style: TextStyle(fontSize: 13))), TableCell(child: Text('地盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('暗干', style: TextStyle(fontSize: 13))), TableCell(child: Text('number', style: TextStyle(fontSize: 13)))]),
//                 ],
//               ),
//             ),
//             TableCell(
//               verticalAlignment: TableCellVerticalAlignment.middle,
//               child: Table(
//                 children: [
//                   TableRow(children: [TableCell(child: Text('八神', style: TextStyle(fontSize: 13))), TableCell(child: Text('五行', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('九星', style: TextStyle(fontSize: 13))), TableCell(child: Text('天盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('八门', style: TextStyle(fontSize: 13))), TableCell(child: Text('地盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('暗干', style: TextStyle(fontSize: 13))), TableCell(child: Text('number', style: TextStyle(fontSize: 13)))]),
//                 ],
//               ),
//             ),
//             TableCell(
//               verticalAlignment: TableCellVerticalAlignment.middle,
//               child: Table(
//                 children: [
//                   TableRow(children: [TableCell(child: Text('八神', style: TextStyle(fontSize: 13))), TableCell(child: Text('五行', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('九星', style: TextStyle(fontSize: 13))), TableCell(child: Text('天盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('八门', style: TextStyle(fontSize: 13))), TableCell(child: Text('地盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('暗干', style: TextStyle(fontSize: 13))), TableCell(child: Text('number', style: TextStyle(fontSize: 13)))]),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         TableRow(
//           children: [
//             TableCell(
//               verticalAlignment: TableCellVerticalAlignment.middle,
//               child: Table(
//                 children: [
//                   TableRow(children: [TableCell(child: Text('八神', style: TextStyle(fontSize: 13))), TableCell(child: Text('五行', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('九星', style: TextStyle(fontSize: 13))), TableCell(child: Text('天盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('八门', style: TextStyle(fontSize: 13))), TableCell(child: Text('地盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('暗干', style: TextStyle(fontSize: 13))), TableCell(child: Text('number', style: TextStyle(fontSize: 13)))]),
//                 ],
//               ),
//             ),
//             TableCell(
//               verticalAlignment: TableCellVerticalAlignment.middle,
//               child: Table(
//                 children: [
//                   TableRow(children: [TableCell(child: Text('八神', style: TextStyle(fontSize: 13))), TableCell(child: Text('五行', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('九星', style: TextStyle(fontSize: 13))), TableCell(child: Text('天盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('八门', style: TextStyle(fontSize: 13))), TableCell(child: Text('地盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('暗干', style: TextStyle(fontSize: 13))), TableCell(child: Text('number', style: TextStyle(fontSize: 13)))]),
//                 ],
//               ),
//             ),
//             TableCell(
//               verticalAlignment: TableCellVerticalAlignment.middle,
//               child: Table(
//                 children: [
//                   TableRow(children: [TableCell(child: Text('八神', style: TextStyle(fontSize: 13))), TableCell(child: Text('五行', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('九星', style: TextStyle(fontSize: 13))), TableCell(child: Text('天盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('八门', style: TextStyle(fontSize: 13))), TableCell(child: Text('地盘干', style: TextStyle(fontSize: 13)))]),
//                   TableRow(children: [TableCell(child: Text('暗干', style: TextStyle(fontSize: 13))), TableCell(child: Text('number', style: TextStyle(fontSize: 13)))]),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class _ExampleGridViewState extends State<ExampleGridView> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "table",
//       home: Scaffold(
//         appBar: AppBar(),
//         // body: Column(
//         //   // textBaseline: TextBaseline.ideographic,
//         //   children: [
//         //     Table(
//         //       border: TableBorder.all(style: BorderStyle.solid, width: 0.3),
//         //       children: [
//         //         TableRow(children: [
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //         ]),
//         //         TableRow(children: [
//         //           //Text("rowA1"), Text("rowA2"), Text("rowA3"),
//         //           TableCell(child: Text('cell1')),
//         //           TableCell(child: Text('cell2')),
//         //           TableCell(child: Text('cell3')),
//         //         ]),
//         //         TableRow(children: [
//         //           // Text("rowC1"), Text("rowC2"), Text("rowC3")
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //         ]),
//         //         TableRow(children: [
//         //           //Text("rowC1"), Text("rowC2"), Text("rowC3")
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //         ]),
//         //       ],
//         //     ),
//         //     Divider(color: Colors.red),
//         //     Table(
//         //       //  border: TableBorder.all(),
//         //       children: [
//         //         TableRow(children: [
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //         ]),
//         //         TableRow(children: [
//         //           //Text("rowA1"), Text("rowA2"), Text("rowA3"),
//         //           TableCell(child: Text('cell1')),
//         //           TableCell(child: Text('cell2')),
//         //           TableCell(child: Text('cell3')),
//         //         ]),
//         //         TableRow(children: [
//         //           // Text("rowC1"), Text("rowC2"), Text("rowC3")
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //         ]),
//         //         TableRow(children: [
//         //           //Text("rowC1"), Text("rowC2"), Text("rowC3")
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //         ]),
//         //       ],
//         //     ),
//         //     // Table(
//         //     //   //  border: TableBorder.all(),
//         //     //   children: const [
//         //     //     TableRow(children: [Text("row1"), Text("row2"), Text("row3")]),
//         //     //     TableRow(children: [Text("rowA1"), Text("rowA2"), Text("rowA3")]),
//         //     //     TableRow(children: [Text("rowC1"), Text("rowC2"), Text("rowC3")]),
//         //     //     TableRow(children: [Text("rowC1"), Text("rowC2"), Text("rowC3")]),
//         //     //   ],
//         //     // ),
//         //     Divider(color: Colors.red),
//         //     Table(
//         //       //  border: TableBorder.all(),
//         //       children: [
//         //         TableRow(children: [
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //         ]),
//         //         TableRow(children: [
//         //           //Text("rowA1"), Text("rowA2"), Text("rowA3"),
//         //           TableCell(child: Text('cell1')),
//         //           TableCell(child: Text('cell2')),
//         //           TableCell(child: Text('cell3')),
//         //         ]),
//         //         TableRow(children: [
//         //           // Text("rowC1"), Text("rowC2"), Text("rowC3")
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //         ]),
//         //         TableRow(children: [
//         //           //Text("rowC1"), Text("rowC2"), Text("rowC3")
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //           TableCell(child: Text('cell')),
//         //         ]),
//         //       ],
//         //     ),
//         //     // Table(
//         //     //   // border: TableBorder.all(),
//         //     //   children: const [
//         //     //     TableRow(children: [Text("row1"), Text("row2"), Text("row3")]),
//         //     //     TableRow(children: [Text("rowA1"), Text("rowA2"), Text("rowA3")]),
//         //     //     TableRow(children: [Text("rowC1"), Text("rowC2"), Text("rowC3")]),
//         //     //     TableRow(children: [Text("rowC1"), Text("rowC2"), Text("rowC3")]),
//         //     //   ],
//         //     // ),
//         //   ],
//         // ),
//         // body: Container(
//         //   width: 300,
//         //   height: 300,
//         //   decoration: BoxDecoration(
//         //     // color: Colors.lightBlue,
//         //     border: Border.all(width: 1, color: Colors.red),
//         //     borderRadius: BorderRadius.circular(8.0),
//         //   ),

//         // ),

//         //  body: Center(
//         //         child: Column(children: <Widget>[
//         //       Container(
//         //         margin: EdgeInsets.all(20),
//         //         child: Table(
//         //           defaultColumnWidth: FixedColumnWidth(120.0),
//         //           border: TableBorder.all(color: Colors.black, style: BorderStyle.solid, width: 2),
//         //           children: [
//         //             TableRow(children: [
//         //               Column(children: [Text('Website', style: TextStyle(fontSize: 20.0))]),
//         //               Column(children: [Text('Tutorial', style: TextStyle(fontSize: 20.0))]),
//         //               Column(children: [Text('Review', style: TextStyle(fontSize: 20.0))]),
//         //             ]),
//         //             TableRow(children: [
//         //               Column(children: [Text('Learnfk')]),
//         //               Column(children: [Text('Flutter')]),
//         //               Column(children: [Text('5*')]),
//         //             ]),
//         //             TableRow(children: [
//         //               Column(children: [Text('Learnfk')]),
//         //               Column(children: [Text('MySQL')]),
//         //               Column(children: [Text('5*')]),
//         //             ]),
//         //             TableRow(children: [
//         //               Column(children: [Text('Learnfk')]),
//         //               Column(children: [Text('ReactJS')]),
//         //               Column(children: [Text('5*')]),
//         //             ]),
//         //           ],
//         //         ),
//         //       ),
//         //     ])),
//         // body: GridView(
//         //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         //     crossAxisCount: 3,
//         //   ),
//         //   children: [

//         //     Column(
//         //       children: [
//         //         Text("a"),
//         //         Text("A"),
//         //         Text("A"),
//         //       ],
//         //     ),
//         //     Column(
//         //       children: [
//         //         Text("B"),
//         //         Text("B"),
//         //         Text("B"),
//         //       ],
//         //     ),
//         //     Column(
//         //       children: [Text("C"), Text("C"), Text("C")],
//         //     )
//         //   ],
//         // ),
//       ),
//     );
//   }
// }
