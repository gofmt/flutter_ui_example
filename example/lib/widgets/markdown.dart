import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';

class PageMartDown extends StatefulWidget {
  const PageMartDown({super.key});

  @override
  State<PageMartDown> createState() => _PageMartDownState();
}

class _PageMartDownState extends State<PageMartDown> {
  String _str = 'welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(toolbarHeight: 30, centerTitle: true, title: Text("markdown+listView")),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: SizedBox(
                        height: 60,
                        width: 300,
                        child: DropdownButton(
                          hint: const Text('下拉选择1'),
                          underline: const SizedBox(), //清除下划线
                          borderRadius: const BorderRadius.all(Radius.circular(6)),
                          items: const [
                            DropdownMenuItem(value: 0, child: Text("select list")),
                            DropdownMenuItem(value: 1, child: Text("str1")),
                            DropdownMenuItem(value: 2, child: Text("str2")),
                            DropdownMenuItem(value: 3, child: Text("str3")),
                          ],
                          onChanged: (value) {
                            setState(() {
                              _str = indexMap[value]!;
                            });
                          },
                        ))),

                ///
                Expanded(
                    child: SizedBox(
                        height: 60,
                        width: 300,
                        child: DropdownButton(
                          hint: const Text('下拉选择2'),
                          underline: const SizedBox(),
                          borderRadius: const BorderRadius.all(Radius.circular(6)),
                          items: const [
                            DropdownMenuItem(value: 0, child: Text("select list")),
                            DropdownMenuItem(value: 1, child: Text("str1")),
                            DropdownMenuItem(value: 2, child: Text("str2")),
                            DropdownMenuItem(value: 3, child: Text("str3")),
                          ],
                          onChanged: (value) {
                            setState(() {
                              _str = indexMap[value]!;
                            });
                          },
                        ))),
              ],
            ),
            Expanded(child: buildMarkdown())
          ],
        ));
  }

  Widget buildMarkdown() => ListView(children: MarkdownGenerator().buildWidgets(_str));
}

Map<int, String> indexMap = {
  1: str1,
  2: str2,
  3: str3,
};
String str1 = "str1A";
String str2 = "str2B";
String str3 = "str3C";
