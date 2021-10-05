import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Container> myList = List.generate(60, (index) {
    return Container(
      height: 50,
      width: 150,
      color: Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256)
      ),
    );
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Grid View")),
      // body: GridView(
      //   padding: EdgeInsets.all(16),
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     crossAxisSpacing: 16,
      //     mainAxisSpacing: 16,
      //     childAspectRatio: 1.0
      //   ),
      //   children: myList,
      // ),

      body: GridView.count(
        padding: EdgeInsets.all(16),
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 4/3,
        children: myList,
      ),
    ));
  }
}
