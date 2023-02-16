import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
