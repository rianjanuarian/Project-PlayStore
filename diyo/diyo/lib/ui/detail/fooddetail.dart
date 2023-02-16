import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({super.key});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  bool likebutton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  'https://media.discordapp.net/attachments/674477685594128386/1075104698874462248/image.png?width=1193&height=671',
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.34,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.orange[900],
                        borderRadius: BorderRadius.circular(60)),
                    child: IconButton(
                      iconSize: 15,
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 10),
                  child: Container(
                      width: 100,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.orange[900],
                          borderRadius: BorderRadiusDirectional.circular(5)),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.table_restaurant_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "No. Meja 1",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 360, top: 220),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.orange[900],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fish Fried",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Kopi"),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Jalan Mayang 29 Medan"),
                    SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      height: 15,
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.timer_sharp,
                          color: Colors.orange[900],
                        ),
                        SizedBox(width: 5),
                        Text(
                          "BUKA",
                          style: TextStyle(color: Colors.orange[900]),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("until 19.00 today"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.27,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(3, 2, 2, 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.orange[900]),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_sharp,
                                color: Colors.white,
                              ),
                              Text(
                                "1209239 km",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
