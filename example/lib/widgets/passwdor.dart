import 'package:flutter/material.dart';
import 'package:mysample/widgets/example_table.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final mycontorller = TextEditingController();
  final date = DateTime.now().toLocal();
  @override
  void dispose() {
    mycontorller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('password'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: mycontorller,
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        var input = mycontorller.text;
        // print("mycontorller.text: $input");
        var now = date.toString().substring(12, 16); //date.hour.toString() + date.minute.toString();
        // print("$date now $now");
        input == now ? Navigator.push(context, MaterialPageRoute(builder: ((context) => const ExampleGridView()))) : "";
      }),
    );
  }
}
