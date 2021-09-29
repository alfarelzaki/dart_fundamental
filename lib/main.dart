import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  List<Color> colorList = [Colors.red, Colors.blue, Colors.green, Colors.amber];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView")
        ),

        body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              height: 300,
              width: 300,
              color: colorList[index]
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: colorList.length),
      ),
    );
  }
}