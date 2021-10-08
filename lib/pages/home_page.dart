import 'dart:math';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:new_flutter/models/product.dart';

class HomePage extends StatelessWidget {
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    final List<Product> myProduct = List.generate(50, (index) {
      return Product(
          faker.food.dish(),
          "https://picsum.photos/id/${index}/200",
          (10000 + Random().nextInt(100000)).toString(),
          faker.lorem.sentence());
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Marketplace"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.network(myProduct[index].imageNetwork),
            footer: Container(
              color: Colors.green.withOpacity(0.8),
              alignment: Alignment.center,
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    myProduct[index].judul,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    maxLines: 1,
                  ),

                  Text(
                    "Rp ${myProduct[index].harga}",
                    style: TextStyle(color: Colors.white),
                  ),

                  Text(
                    myProduct[index].deskripsi,
                    maxLines: 2,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: myProduct.length,
      ),
    );
  }
}
