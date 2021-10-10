import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() {
  // make device orientation potrait only

  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("flexible and expanded"),
        ),
        body: Center(
          child: Container(
            color: Colors.amber,
            height: 150,
            width: 300,
            child: FittedBox(
              alignment: Alignment.centerRight,
              child: Image.network("https://picsum.photos/200/300"),
            ),
          ),
        ));
  }
}
