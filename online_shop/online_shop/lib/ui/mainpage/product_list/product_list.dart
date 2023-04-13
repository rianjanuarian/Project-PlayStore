import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:online_shop/model/apiservices.dart';
import 'package:online_shop/model/listproduk.dart';
import 'package:online_shop/ui/mainpage/product_details.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Produk"),
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
                      return Card(
                        color: Colors.grey[200],
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: InkWell(
                          onTap: () {
                            Get.to(ProductDetail(
                                id: value.id ?? 0,
                                image: value.image!,
                                names: value.title!,
                                price: value.price!,
                                description: value.description!));
                          },
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.all(1),
                                        padding: const EdgeInsets.all(1),
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
                                              style: const TextStyle(
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
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            const SizedBox(
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
                      );
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
}
