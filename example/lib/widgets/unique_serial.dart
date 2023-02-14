import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unique_identifier/unique_identifier.dart';

class UniqueExample extends StatefulWidget {
  const UniqueExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UniqueExampleState createState() => _UniqueExampleState();
}

class _UniqueExampleState extends State<UniqueExample> {
  String _identifier = 'Unknown';

  @override
  void initState() {
    super.initState();
    initUniqueIdentifierState();
  }

  Future<void> initUniqueIdentifierState() async {
    String identifier;
    try {
      identifier = (await UniqueIdentifier.serial)!;
    } on PlatformException {
      identifier = 'Failed to get Unique Identifier';
    }

    if (!mounted) return;

    setState(() {
      _identifier = identifier;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("$_identifier\n");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on device with id: \n$_identifier\n'),
        ),
      ),
    );
  }
}
