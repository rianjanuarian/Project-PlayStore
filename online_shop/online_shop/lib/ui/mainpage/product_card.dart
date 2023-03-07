import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:online_shop/ui/mainpage/product_details.dart';
import 'package:online_shop/model/product.dart';

// ignore: must_be_immutable
class ProductCard extends StatelessWidget {
  int id;
  String namep;
  String descriptionp;
  String imagep;
  num pricep;
  ProductCard(
      {super.key,
      required this.id,
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
                  Get.to(() => ProductDetail(
                      id: id,
                      image: imagep,
                      names: namep,
                      price: pricep,
                      description: descriptionp));
                },
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(6),
                              padding: const EdgeInsets.all(1),
                              decoration:
                                  BoxDecoration(color: Colors.grey[100]),
                              child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.width * 0.30,
                                  child: Image.network(
                                    imagep,
                                  )),
                              //
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Column(
                                children: [
                                  Text(
                                    (namep).length > 25
                                        ? namep.substring(0, 20)
                                        : namep,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                (descriptionp).length > 25
                                    ? "${descriptionp.substring(0, 20)}..."
                                    : descriptionp,
                                style: const TextStyle(fontSize: 12),
                              ),
                            ),
                            // products!.description!.length  > 10
                            //         ? products?.description ??
                            //             " asdasd".substring(0, 15) + "..."
                            //         : products?.description ?? "ASdasd",
                            //     style: TextStyle(fontSize: 12),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  NumberFormat.currency(
                                    locale: 'en-us',
                                    symbol: 'USD.',
                                  ).format(pricep),
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
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
              style: ElevatedButton.styleFrom(shape: const CircleBorder()),
              onPressed: () {},
              child: const Text("+")),
        ),
      ],
    );
  }
}
