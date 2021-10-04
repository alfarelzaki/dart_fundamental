import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController myController = TextEditingController();
  String data = "hasil input";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text field usage"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
                TextField(
                  controller: myController,

                  onChanged: (value) {
                    print("onchanged: ${value}");
                  },

                  onSubmitted: (value) {
                    print("onsubmitted: ${value}");

                    setState(() {
                      data = value;
                    });
                  },

                  onEditingComplete: () {
                    print("edit success");
                  },
                ),

                Text(data)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
