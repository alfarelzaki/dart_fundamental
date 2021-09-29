import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Text(
            "This is homepage, i dont know what to write so i just write everything that cross my mind here",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              backgroundColor: Colors.amber,
              color: Colors.brown[800],
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 8,
              fontFamily: "RobotoMono",
              decorationStyle: TextDecorationStyle.wavy,
              decoration: TextDecoration.underline,
              decorationColor: Colors.green[400],
              decorationThickness: 3

            )
          )
        ),
      )
    );
  }
}