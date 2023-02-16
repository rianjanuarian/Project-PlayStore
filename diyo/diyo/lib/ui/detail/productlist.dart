import 'package:diyo/model/products.dart';
import 'package:diyo/ui/detail/fooddetail.dart';
import 'package:diyo/ui/detail/restaurantdetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class ProductList extends StatelessWidget {
  int id;
  String namarestoran;
  String alamatRestoran;
  String kategori;
  String prep;
  String image;
  String jarak;
  ProductList(
      {super.key,
      required this.id,
      required this.namarestoran,
      required this.alamatRestoran,
      required this.kategori,
      required this.prep,
      required this.image,
      required this.jarak});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Get.to(() => RestaurantDetail());
        },
        child: Row(
          children: [
            Image.network(
              image,
              width: 50,
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Text(prep),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(namarestoran),
                    Row(
                      children: [
                        Text(alamatRestoran),
                        SizedBox(
                          width: 10,
                        ),
                        Text(jarak)
                      ],
                    ),
                    Text(kategori),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
//image products!.image ?? " "