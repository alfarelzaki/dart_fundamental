import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:io';

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
          title: Text(
            "Cupertino design",
          ),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Platform.isIOS
                        ? CupertinoAlertDialog(
                            title: Text("Delete item"),
                            content: Text(
                              "Are you sure you want to delete this item?",
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {},
                                child: Text("No"),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("Yes"),
                              ),
                            ],
                          )
                        : AlertDialog(
                            title: Text("Delete item"),
                            content: Text(
                              "Are you sure you want to delete this item?",
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {},
                                child: Text("No"),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("Yes"),
                              ),
                            ],
                          );
                  });
            },
            child: Text("Alert dialog"),
          ),
        ));
  }
}
