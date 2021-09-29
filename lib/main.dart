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
          title: Text("Column"),
        ),

        body: Stack(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),

            Container(
              height: 150,
              width: 150,
              color: Colors.blue,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),

            Container(
              height: 50,
              width: 50,
              color: Colors.red,
            ),
          ],
        )
      )
    );
  }
}



