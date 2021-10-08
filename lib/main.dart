import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter/pages/gallery_page.dart';
import 'package:new_flutter/pages/home_page.dart';
import 'package:new_flutter/pages/photo_page.dart';

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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switchStatus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch")),
      body: Center(
        child: Column(
          children: [
            Switch(
              activeColor: Colors.green,
              inactiveThumbColor: Colors.red,
              inactiveTrackColor: Colors.red[100],

              value: switchStatus,
              onChanged: (value) {
                setState(() {
                  switchStatus = !switchStatus;
                });
              },
            ),
            
            Text(
              (switchStatus == true) ? "Switch on" : "Switch off",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
