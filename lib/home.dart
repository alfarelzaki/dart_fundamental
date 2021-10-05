import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String inputData = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: Text(
          inputData,
          style: TextStyle(
            fontSize: 32,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("telah diklik");

          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Confirm"),
                  content: Text("are you sure want to delete this item?"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          print("click no");
                          Navigator.of(context).pop(false);
                          setState(() {
                            inputData = "user memilih no";
                          });
                        },
                        child: Text("No")),
                    TextButton(
                        onPressed: () {
                          print("click yes");
                          Navigator.of(context).pop(true);
                          setState(() {
                            inputData = "user memilih yes";
                          });
                        },
                        child: Text("Yes")),
                  ],
                );
                // value mengembalikan nilai dari navigator.pop()
              }).then((value) => print(value));
        },
        child: Icon(Icons.delete),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
