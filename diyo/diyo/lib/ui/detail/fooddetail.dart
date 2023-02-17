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
          children: [topStack(), description()],
        ),
      ),
    );
  }

  Widget topStack() {
    return Stack(
      children: [
        Image.network(
          'https://media.discordapp.net/attachments/674477685594128386/1072219599313063956/image.png?width=1315&height=671',
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
      ],
    );
  }

  Widget description() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Fish Fried",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            Text(
              "28.000",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.orange[900]),
            )
          ],
        ),
        const Divider(
          height: 15,
          thickness: 2,
          indent: 1,
          endIndent: 1,
          color: Colors.red,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Special Request',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Catatan Untuk Restoran',
            hintStyle: TextStyle(fontSize: 15),
            border: InputBorder.none,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.white),
                  child: Text("-",
                      style:
                          TextStyle(color: Colors.orange[900], fontSize: 20))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text("1"),
            ),
            SizedBox(
              width: 40,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.white),
                  child: Text("+",
                      style:
                          TextStyle(color: Colors.orange[900], fontSize: 20))),
            ),
          ],
        )
      ]),
    );
  }
}
