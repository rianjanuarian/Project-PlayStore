import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:online_shop/model/product.dart';

class ProductListCard extends StatelessWidget {
  const ProductListCard({super.key});

  @override
  Widget build(BuildContext context) {
    Products products;
    return Card(
      color: Colors.grey[200],
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(1),
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(color: Colors.grey[100]),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: Image.network(
                              "https://cdn.discordapp.com/attachments/674477685594128386/1072515298495824014/older_rehan_mp11-20230205-0001.png")),
                      //
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        children: [
                          Text(
                            "tittle",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                    // products!.description!.length  > 10
                    //         ? products?.description ??
                    //             " asdasd".substring(0, 15) + "..."
                    //         : products?.description ?? "ASdasd",
                    //     style: TextStyle(fontSize: 12),

                    Row(
                      children: [
                        Text(
                          NumberFormat.currency(
                                  locale: 'id', symbol: 'Rp.', decimalDigits: 0)
                              .format(100000000),
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
    );
  }
}
