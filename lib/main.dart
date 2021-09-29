import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> colorList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.amber
  ];

  final List<Widget> myList = List.generate(
      100,
      (index) => Text(
            "${index + 1}",
            style: TextStyle(fontSize: 20 + double.parse(index.toString())),
          )
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("ListView")),
        body: ListView(
          children: myList,
        )
      ),
    );
  }
}
