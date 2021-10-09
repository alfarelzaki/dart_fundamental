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
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      title: Text("Media Query"),
    );

    final mediaQueryBody = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final isLandscape =
        (MediaQuery.of(context).orientation == Orientation.landscape);

    return Scaffold(
      appBar: myAppBar,
      body: Center(
        child: (isLandscape)
            ? Column(
                children: [
                  Container(
                    width: mediaQueryWidth,
                    height: mediaQueryBody * 0.5,
                    color: Colors.amber,
                  ),
                  Container(
                    width: mediaQueryWidth,
                    height: mediaQueryBody * 0.5,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                        ),
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return GridTile(
                            child: Container(
                              color: Color.fromARGB(255, Random().nextInt(256),
                                  Random().nextInt(256), Random().nextInt(256)),
                            ),
                          );
                        }),
                  ),
                ],
              )
            : Column(
                children: [
                  Container(
                    width: mediaQueryWidth,
                    height: mediaQueryBody * 0.3,
                    color: Colors.amber,
                  ),
                  Container(
                    width: mediaQueryWidth,
                    height: mediaQueryBody * 0.7,
                    child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.green,
                            ),
                            title: Text("Halo semua"),
                          );
                        }),
                  ),
                ],
              ),
      ),
    );
  }
}
