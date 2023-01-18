import 'package:flutter/cupertino.dart';
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
            SizedBox(width: 100, child: Image.network(image)),
            Text(name),
            Text(description),
            Text(NumberFormat.currency(
                    locale: 'id', symbol: 'Rp.', decimalDigits: 0)
                .format(price)),
          ],
        )
      ],
    );
  }
}
