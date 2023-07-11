import 'package:flutter/material.dart';

class ExampleTableLoop extends StatefulWidget {
  const ExampleTableLoop({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Tabledemo();
  }
}

class _Tabledemo extends State<ExampleTableLoop> {
  List demoList = [
    {
      "A": "list1",
      "B": "list2",
      "C": "list3",
    },
    {
      "A": "list1",
      "B": "list2",
      "C": "list3",
    },
    {
      "A": "list1",
      "B": "list2",
      "C": "list3",
    },
    {
      "A": "list1",
      "B": "list2",
      "C": "list3",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table Demo'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Table(
            border: TableBorder.all(width: 1.0, color: Colors.black12),
            children: _tableRowList(),
          ),
        ],
      ),
    );
  }

  _tableRowList() {
    var count = demoList.length;
    dynamic content;
    // ignore: non_constant_identifier_names
    List<TableRow> Tlist = <TableRow>[
      const TableRow(
        children: [
          Center(child: Text('标题A')),
          Center(child: Text('标题B')),
          Center(child: Text('标题C')),
        ],
      ),
    ];
    for (var i = 0; i < count; i++) {
      content = TableRow(
        children: [
          Center(child: Text(demoList[i]['A'].toString())),
          Center(child: Text(demoList[i]['B'].toString())),
          // Center(child: RichText(text: TextSpan(text: demoList[i].toString())))
          Center(child: Text(demoList[i]['C'].toString())),
        ],
      );
      Tlist.add(content);
    }
    return Tlist;
  }
}

// import 'package:flutter/material.dart';

// class TableLoop extends StatefulWidget {
//   const TableLoop({super.key});

//   @override
//   State<TableLoop> createState() => _TableLoopState();
// }

// class _TableLoopState extends State<TableLoop> {
//   @override
//   Widget build(BuildContext context) {
//     var list = [
//       {'id': "123123", "date": "20/08/2016"},
//       {'id': "123124", "date": "26/08/2016"},
//       {'id': "123125", "date": "26/08/2016"}
//     ];
//     return Center(
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//           const Text('Recent Claims'),
//           Table(border: TableBorder.all(color: Colors.black), columnWidths: const {
//             0: FixedColumnWidth(200.0),
//             1: FixedColumnWidth(50.0)
//           }, children: [
//             for (var item in list)
//               TableRow(children: [
//                 Container(
//                   margin: const EdgeInsets.all(10),
//                   child: Text(item['id']!),
//                 ),
//                 Container(
//                   margin: const EdgeInsets.all(10),
//                   child: Text(item['date']!),
//                 ),
//               ])
//           ])
//         ]));
//   }
// }
