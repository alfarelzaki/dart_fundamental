import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter/pages/home_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}