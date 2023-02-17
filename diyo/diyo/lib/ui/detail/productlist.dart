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
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: () {
          Get.to(() => RestaurantDetail());
        },
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Align(
                alignment: Alignment(0.5, 0.9),
                child: Text(
                  jarak,
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Container(
                    padding:
                        EdgeInsets.only(left: 8, bottom: 4, top: 4, right: 8),
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          size: 12,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "20 menit",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.network(
                      image,
                      width: 70,
                      height: 70,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          namarestoran,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text((alamatRestoran.length > 4)
                                ? alamatRestoran.substring(0, 16)
                                : alamatRestoran),
                            // SizedBox(
                            //   width: 10,
                            // ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(kategori),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//image products!.image ?? " "