import 'package:flutter/material.dart';
import 'package:new_flutter/pages/home_page.dart';
import 'package:new_flutter/pages/photo_page.dart';

class GalleryPage extends StatelessWidget {
  static const routeName = '/gallerypage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery page"),
      ),
      body: Center(
        child: Text(
          "Gallery Page",
          style: TextStyle(
            fontSize: 36,
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              height: 160,
              child: Text("Menu drawer", style: TextStyle(fontSize: 24),),
              color: Colors.amber[300],
              alignment: Alignment.bottomLeft,
            ),

            SizedBox(
              height: 16,
            ),

            ListTile(
              leading: Icon(Icons.home, size: 32,),
              title: Text("Home", style: TextStyle(fontSize: 20),),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(HomePage.routeName);
              },
            ),

            ListTile(
              leading: Icon(Icons.photo_album, size: 32,),
              title: Text("Gallery", style: TextStyle(fontSize: 20),),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(GalleryPage.routeName);
              },
            ),

            ListTile(
              leading: Icon(Icons.photo, size: 32,),
              title: Text("Photo", style: TextStyle(fontSize: 20),),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(PhotoPage.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
