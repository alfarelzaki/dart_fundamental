import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image View"),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
          return ChatItem(
              imageUrl: "https://picsum.photos/id/${index}/200/300",
              name: faker.person.name(),
              message: faker.lorem.sentence(),
            );
        })
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;

  ChatItem({
    required this.imageUrl, required this.name, required this.message
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(name),
      subtitle: Text(message),
      trailing: Text("4:00 PM"),
    );
  }
}