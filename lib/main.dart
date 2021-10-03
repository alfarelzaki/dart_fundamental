import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: "Tab 1",
      icon: Icon(Icons.icecream),
    ),
    Tab(
      text: "Tab 2",
      icon: Icon(Icons.local_pizza),
    ),
    Tab(
      text: "Tab 3",
      icon: Icon(Icons.rice_bowl),
    ),
  ];

  List<Widget> myTabView = [
    Center(
      child: Text(
        "Tab 1",
        style: TextStyle(fontSize: 50),
      ),
    ),

    Center(
      child: Text(
        "Tab 2",
        style: TextStyle(fontSize: 50),
      ),
    ),

    Center(
      child: Text(
        "Tab 3",
        style: TextStyle(fontSize: 50),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange[900],
            title: Text("Tab App"),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold
              ),
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.normal
              ),

              // indicatorColor: Colors.black,
              // indicatorPadding: EdgeInsets.all(8),
              // indicatorWeight: 5,

              indicator: BoxDecoration(
                color: Colors.orange[400],
                // borderRadius: BorderRadius.circular(64)
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 5
                  )
                )
              ),
              tabs: myTab
            ),
          ),

          body: TabBarView(children: myTabView,),
        ),
      ),
    );
  }
}
