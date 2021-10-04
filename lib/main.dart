import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField App"),
        ),

        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              autocorrect: true,
              autofocus: true,
              enableSuggestions: false,
              enableInteractiveSelection: true,
              obscureText: true,
              obscuringCharacter: "#",
              keyboardType: TextInputType.phone,
            ),
          ),
        ),
      ),
    );
  }
}
