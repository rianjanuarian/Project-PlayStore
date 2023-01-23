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
                  Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(6),
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(color: Colors.grey[100]),
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height:
                                    MediaQuery.of(context).size.width * 0.30,
                                child: Image.network(
                                  image,
                                )),
                            //
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Column(
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              description.length > 10
                                  ? description.substring(0, 15) + "..."
                                  : description,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text(
                                NumberFormat.currency(
                                        locale: 'id',
                                        symbol: 'Rp.',
                                        decimalDigits: 0)
                                    .format(price),
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(85, 185, 0, 5),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(shape: CircleBorder()),
              onPressed: () {},
              child: Text("+")),
        ),
      ],
    );
  }
}
