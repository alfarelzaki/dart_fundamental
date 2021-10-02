import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dynamic App")
        ,),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 50 + double.parse(counter.toString())),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (counter > 1) {
                      setState(() {
                        counter--;  
                      });
                      
                      print(counter);
                    }
                  },
                  child: Icon(Icons.remove),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;  
                    });
                    
                    print(counter);
                  },
                  child: Icon(Icons.add),
                ),
              ],
            )
          ],
        )
      ,)
    );
  }
}