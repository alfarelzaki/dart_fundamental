import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("List Tile")),
        body: ListView(
          children: const [
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              leading: CircleAvatar(),
              title: Text("Alfarel Zaki"),
              subtitle: Text(
                "Hey yo whats up! Wanna hang out?",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Text("18:23 PM"),
              // tileColor: Colors.amber,
              // dense: true,
              // onTap: () {

              // },
            ),
            Divider(color: Colors.black),
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              leading: CircleAvatar(),
              title: Text("Alfarel Zaki"),
              subtitle: Text(
                "Hey yo whats up! Wanna hang out?",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Text("18:23 PM"),
              // tileColor: Colors.amber,
              // dense: true,
              // onTap: () {

              // },
            ),
            Divider(color: Colors.black),
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              leading: CircleAvatar(),
              title: Text("Alfarel Zaki"),
              subtitle: Text(
                "Hey yo whats up! Wanna hang out?",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Text("18:23 PM"),
              // tileColor: Colors.amber,
              // dense: true,
              // onTap: () {

              // },
            ),
            Divider(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
