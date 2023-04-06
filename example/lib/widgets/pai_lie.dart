import 'package:flutter/material.dart';

///排列组合
class PagePaiLie extends StatefulWidget {
  const PagePaiLie({Key? key}) : super(key: key);

  @override
  State<PagePaiLie> createState() => _PagePaiLieState();
}

class _PagePaiLieState extends State<PagePaiLie> {
  final input = TextEditingController();
  @override
  void dispose() {
    input.dispose();
    super.dispose();
  }

  String str = "";
  List<int> a = [0, 0, 0, 0, 0];

  //
  int rawLen = 0;
  int combineLen = 3;
  void cal() {
    a.clear();
    for (int i = 0; i < str.length; i++) {
      a.add(int.parse(str.substring(i, i + 1)));
    }
    rawLen = a.length;
  }

  String resStr = "";

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('排列三'), centerTitle: true, toolbarHeight: 30),
        body: Column(
          children: [
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 112, 198, 198), borderRadius: BorderRadius.all(Radius.circular(6))),
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: input,
                    style: const TextStyle(fontSize: 21),
                    decoration: const InputDecoration(border: InputBorder.none, hintText: "输入要计算的数字"),
                  )),
            ),
            FittedBox(
                child: Row(
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        str = input.text;
                        cal();
                      });
                      // ignore: avoid_print
                      print("str $str a $a");
                      combine();
                    },
                    child: const Text("显示")),
                const SizedBox(width: 3),
                TextButton(
                    onPressed: () {
                      setState(() {
                        resStr = "";
                      });
                    },
                    child: const Text("清除"))
              ],
            )),
            Expanded(
                child: ListView(
              children: [
                SelectableText(str,
                    textAlign: TextAlign.center, style: const TextStyle(fontSize: 17, color: Colors.redAccent)),
                const Divider(color: Colors.black87),
                SelectableText(resStr, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16)),
              ],
            ))
          ],
        ));
  }

  combine() {
    int arrLen = rawLen - combineLen;
    List<int> listx = List.filled(3, 0, growable: false);
    for (var i = 0; i <= arrLen; i++) {
      listx[0] = a[i];
      doProcess(listx, i, 1);
    }
  }

  doProcess(List<int> result, int rawIndex, int curIndex) {
    int choice = rawLen - rawIndex + curIndex - combineLen;
    List<int> tResult = [];
    for (int i = 0; i < choice; i++) {
      if (i != 0) {
        copyArr(result, tResult);
      } else {
        tResult = result;
      }
      tResult[curIndex] = a[i + 1 + rawIndex];
      if (curIndex + 1 == combineLen) {
        printIntArr(tResult);
        continue;
      } else {
        doProcess(tResult, (rawIndex + i + 1), curIndex + 1);
      }
    }
  }

  copyArr(List<int> rawArr, List<int> target) {
    for (int i = 0; i < rawArr.length; i++) {
      target[i] = rawArr[i];
    }
  }

  printIntArr(List<int> arr) {
    List<String> valuesText = [];
    for (var i = 0; i < arr.length; i++) {
      int number = arr[i];
      String text = number.toString();
      valuesText.add(text);
    }
    resStr += "\n${valuesText.join(",")}";
    // ignore: avoid_print
    print(resStr);
  }
}
