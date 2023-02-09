import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:online_shop/ui/mainpage/product_details.dart';
import 'package:online_shop/model/product.dart';

class ProductCard extends StatelessWidget {
  Products? products;
  String namep;
  String descriptionp;
  String imagep;
  int pricep;
  ProductCard(
      {super.key,
      required this.descriptionp,
      required this.pricep,
      required this.imagep,
      required this.namep});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Card(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: InkWell(
                onTap: () {
                  Get.to(() => const ProductDetail());
                },
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
                              decoration:
                                  BoxDecoration(color: Colors.grey[100]),
                              child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.width * 0.30,
                                  child: Image.network(
                                    products?.image ?? imagep,
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
                                    products?.title ?? namep,
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
                                (products?.description ?? descriptionp).length >
                                        10
                                    ? products?.description ??
                                        descriptionp.substring(0, 10) + "..."
                                    : products?.description ?? descriptionp,
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            // products!.description!.length  > 10
                            //         ? products?.description ??
                            //             " asdasd".substring(0, 15) + "..."
                            //         : products?.description ?? "ASdasd",
                            //     style: TextStyle(fontSize: 12),
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
                                      .format(products?.price ?? pricep),
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
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
