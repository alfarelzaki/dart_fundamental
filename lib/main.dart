import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            color: Colors.green,
            width: 100,
          ),

          title: Container(
            color: Colors.blue,
            // width: 100,
            height: 25
          ),
          // titleSpacing: 0,

          actions: [
            Container(
            color: Colors.amber,
            width: 40,
          ),
          Container(
            color: Colors.orange,
            width: 40,
          ),
          Container(
            color: Colors.amber,
            width: 40,
          )
          ],

          bottom: PreferredSize(
            preferredSize: Size.fromHeight(500),
            child: Container(
              color: Colors.pink,
              width: 50,
              height: 400,
            ),
          ),

          flexibleSpace: Container(
            color: Colors.purple,
            height: 300,
          ),
        ),
      )
    );
  }
}