import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class ProductCard extends StatelessWidget {
  String name;
  String description;
  String image;
  int price;
  ProductCard({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Card(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Image.network(image)),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text(description),
                  SizedBox(
                    height: 10,
                  ),
                  Text(NumberFormat.currency(
                          locale: 'id', symbol: 'Rp.', decimalDigits: 0)
                      .format(price)),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
