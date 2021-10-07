import 'package:flutter/material.dart';
import 'package:new_flutter/pages/gallery_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Center(
        child: Text(
          "Home Page",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ), 
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(GalleryPage.routeName);
        },
        child: Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
