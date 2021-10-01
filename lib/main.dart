import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image View"),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            child: Image.network("https://picsum.photos/200")
            // child: Image(
            //   image: AssetImage("images/cat.jpg"),
            //   image: NetworkImage("https://picsum.photos/200/300"),
            //   fit: BoxFit.cover,
            // ),
          ),
        ),
      )
    );
  }
}