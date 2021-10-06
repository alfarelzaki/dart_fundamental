import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissibe"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: 50,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(index.toString()),

            onDismissed: (direction) {
              print("DISMISSED");

              if (direction == DismissDirection.endToStart) {
                print("END TO START");
              } else {
                print("START TO END");
              }
            },

            confirmDismiss: (direction) {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Delete item"),
                    content: Text("Are you sure want to delete this item?"),
                    actions: [
                      TextButton(onPressed: () {
                        Navigator.of(context).pop(false);
                      }, child: Text("No")),

                      TextButton(onPressed: () {
                        Navigator.of(context).pop(true);
                      }, child: Text("Yes")),
                    ],
                  );
                },
              );
            },

            // direction: DismissDirection.endToStart,

            child: ListTile(
              leading: CircleAvatar(
                child: Text("${index + 1}"),
              ),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            ),

            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete, size: 24),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 16),
            ),
          );
        },
      ),
    );
  }
}
