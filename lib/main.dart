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
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    final myAppBar = AppBar(title: Text("flexible and expanded"));

    final heightBody = heightApp - paddingTop - myAppBar.preferredSize.height;

    return Scaffold(
      appBar: myAppBar,
      body: Container(
        color: Colors.amber,
        height: heightBody * 0.3,
        width: widthApp,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyContainer(widthApp),
            MyContainer(widthApp),
            MyContainer(widthApp),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final double widthApp;

  MyContainer(this.widthApp);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight * 0.5,
          width: widthApp * 0.3,
          color: Colors.red,
        );
      },
    );
  }
}
