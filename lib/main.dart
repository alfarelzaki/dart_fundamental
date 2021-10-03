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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Date Format"),
        ),

        body: Center(
          child: Text(
            DateFormat.yMMMMd().add_jm().format(DateTime.now()),
            style: TextStyle(
              fontSize: 25
            ),
          ),
        ),
      ),
    );
  }
}