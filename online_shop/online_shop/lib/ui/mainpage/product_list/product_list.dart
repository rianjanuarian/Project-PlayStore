import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:online_shop/model/apiservices.dart';
import 'package:online_shop/model/listproduk.dart';
import 'package:online_shop/model/product.dart';
import 'package:online_shop/ui/mainpage/product_list/product_list_card.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    Products? products;
    return Scaffold(
      appBar: AppBar(
        title: Text("List Produk"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<List<Produk?>>(
            future: Services.listProduk(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 10 / 14,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext ctx, index) {
                      final value = snapshot.data![index];
                      return Container(
                          child: Card(
                        color: Colors.grey[200],
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(1),
                                        padding: EdgeInsets.all(1),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[100]),
                                        child: SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.6,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.3,
                                            child:
                                                Image.network(value!.image!)),
                                        //
                                      ),

                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              (value.title!.length > 30)
                                                  ? value.title!
                                                      .substring(0, 25)
                                                  : value.title!,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),

                                      // products!.description!.length  > 10
                                      //         ? products?.description ??
                                      //             " asdasd".substring(0, 15) + "..."
                                      //         : products?.description ?? "ASdasd",
                                      //     style: TextStyle(fontSize: 12),

                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              NumberFormat.currency(
                                                locale: 'en-us',
                                                symbol: 'USD.',
                                                // decimalDigits: 0
                                              ).format(value.price),
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ));
                    });
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }

  // Widget _productList(BuildContext context) {
  //   return Card(
  //     color: Colors.grey[200],
  //     shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
  //     child: InkWell(
  //       onTap: () {},
  //       child: Column(
  //         children: [
  //           Stack(
  //             children: [
  //               Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Container(
  //                     margin: EdgeInsets.all(1),
  //                     padding: EdgeInsets.all(1),
  //                     decoration: BoxDecoration(color: Colors.grey[100]),
  //                     child: SizedBox(
  //                         width: MediaQuery.of(context).size.width * 0.6,
  //                         height: MediaQuery.of(context).size.height * 0.3,
  //                         child: Image.network(
  //                             "https://cdn.discordapp.com/attachments/674477685594128386/1072515298495824014/older_rehan_mp11-20230205-0001.png")),
  //                     //
  //                   ),

  //                   Padding(
  //                     padding: const EdgeInsets.only(left: 5.0),
  //                     child: Column(
  //                       children: [
  //                         Text(
  //                           "tittle",
  //                           style: TextStyle(
  //                               fontWeight: FontWeight.w700, fontSize: 12),
  //                         ),
  //                       ],
  //                     ),
  //                   ),

  //                   // products!.description!.length  > 10
  //                   //         ? products?.description ??
  //                   //             " asdasd".substring(0, 15) + "..."
  //                   //         : products?.description ?? "ASdasd",
  //                   //     style: TextStyle(fontSize: 12),

  //                   Row(
  //                     children: [
  //                       Text(
  //                         NumberFormat.currency(
  //                                 locale: 'id', symbol: 'Rp.', decimalDigits: 0)
  //                             .format(100000000),
  //                         style: TextStyle(
  //                             fontSize: 12, fontWeight: FontWeight.w700),
  //                       ),
  //                       SizedBox(
  //                         width: 10,
  //                       ),
  //                     ],
  //                   ),
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
