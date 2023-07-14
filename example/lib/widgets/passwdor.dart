import 'package:flutter/material.dart';

import 'example_table.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final mycontorller = TextEditingController();
  @override
  void dispose() {
    mycontorller.dispose();
    super.dispose();
  }

  late bool _isObscure = true;
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
          obscureText: _isObscure,
          controller: mycontorller,
          decoration: InputDecoration(
              labelText: "Password",
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off))),
          onChanged: (value) {
            print("input value is $value");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        var input = mycontorller.text;
        setState(() {
          print("input $input");
        });
        Navigator.push(context, MaterialPageRoute(builder: ((context) => const ExampleGridView())));
      }),
    );
  }
}
