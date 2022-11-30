// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:ffi/ffi.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'create_message.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CreateTextForm());
  }
}

class CreateTextForm extends StatefulWidget {
  const CreateTextForm({Key? key}) : super(key: key);

  @override
  State<CreateTextForm> createState() => _CreateTextFormState();
}

class _CreateTextFormState extends State<CreateTextForm> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  String str = '';
  message(String text) {
    var dyf = dylibmessage(text.toNativeUtf8());
    var dyfs = dyf.toDartString();
    setState(() {
      str = dyfs;
    });
    if (kDebugMode) {
      print("str $str");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Text Input'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: myController,
            ),
          ),
          Text(
            str,
            style: const TextStyle(fontSize: 24),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createMessage(myController.text);
          message(myController.text);
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
