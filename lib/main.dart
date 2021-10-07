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
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        GalleryPage.routeName: (context) => GalleryPage(),
        PhotoPage.routeName: (context) => PhotoPage(),
      },
    );
  }
}