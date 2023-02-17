import 'package:diyo/model/products.dart';
import 'package:diyo/ui/detail/productlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductList? productList;
    return Scaffold(
      appBar: AppBar(
        title: Text("D I Y O"),
        backgroundColor: Colors.orange[900],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, bottom: 20),
            child: Text("Semua Restoran"),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: Products.products.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Image.network(
                        Products.products[index].resimage ?? '',
                        width: 100,
                        height: 100,
                      ),
                      Column(
                        children: [
                          Text(
                            Products.products[index].restaurantname ?? '',
                          ),
                          Text(Products.products[index].address ?? ''),
                          Text(Products.products[index].foodKind ?? '')
                        ],
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
