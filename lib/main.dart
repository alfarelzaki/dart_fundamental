import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField App"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              showCursor: true,
              cursorColor: Colors.green,
              // cursorHeight: 24,
              // cursorWidth: 12,
              // cursorRadius: Radius.circular(20),

              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              textCapitalization: TextCapitalization.none,

              obscureText: true,

              style: TextStyle(fontSize: 16, color: Colors.green),

              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  size: 24,
                ),

                border: OutlineInputBorder(),

                prefixIcon: Icon(Icons.add_a_photo),
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  onPressed: () {},
                ),

                // prefixText: "Name: ",

                hintText: "Masukkan nama anda",
                hintStyle: TextStyle(color: Colors.green, fontSize: 16),

                labelText: "Nama lengkap",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
