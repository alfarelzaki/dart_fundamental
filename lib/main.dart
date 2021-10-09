import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(
          brightness: Brightness.light,
          // visualDensity: VisualDensity.comfortable,
          visualDensity: VisualDensity(horizontal: 3, vertical: 1),
          primarySwatch: Colors.green,
          textTheme: TextTheme(
            bodyText2: TextStyle(
              color: Colors.blue,
              fontFamily: "RobotoMono",
            ),
          ),

          appBarTheme: AppBarTheme(
            color: Colors.red,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontFamily: "RobotoMono",
            )
          )
        ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Theme",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "this is a text",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "this is a text",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Button",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.star)),
    );
  }
}
