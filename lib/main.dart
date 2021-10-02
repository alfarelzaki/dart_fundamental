import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Farel",
      "Age": 21,
      "favColor": [
        "Turqoise",
        "Orange",
        "Red",
        "Blue",
        "Purple",
        "Turqoise",
        "Orange",
        "Red",
        "Blue",
        "Purple"
      ]
    },
    {
      "Name": "Lady",
      "Age": 16,
      "favColor": ["Green"]
    },
    {
      "Name": "Falia",
      "Age": 10,
      "favColor": ["Red", "Blue", "Purple"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ID App")),
        body: ListView(
          children: myList.map((data) {
            List myfavcolor = data["favColor"];

            return Card(
              margin: EdgeInsets.all(20),
              color: Colors.grey[100],
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${data['Name']}"),
                            Text("Age: ${data['Age']}"),
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myfavcolor.map((color) {
                          return Container(
                            child: Text(color),
                            color: Colors.amber,
                            margin:
                                EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                            padding: EdgeInsets.all(8),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
