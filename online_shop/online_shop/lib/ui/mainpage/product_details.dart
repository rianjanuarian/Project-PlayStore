import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:online_shop/model/product.dart';
import 'package:online_shop/ui/mainpage/product_card.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class ProductDetail extends StatefulWidget {
  int id;
  String image;
  String names;
  String description;
  num price;
  ProductDetail(
      {super.key,
      required this.id,
      required this.image,
      required this.names,
      required this.price,
      required this.description});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int sliderindex = 0;
  final urlImage = [
    'https://media.discordapp.net/attachments/674477685594128386/1065158874342117417/1425950877p.jpg',
    'https://cdn.discordapp.com/attachments/986713553203515402/1066753227296608306/326240751_1042899663295752_826465983452364938_n.png',
    'https://cdn.discordapp.com/attachments/986713553203515402/1066753227296608306/326240751_1042899663295752_826465983452364938_n.png',
    'https://cdn.discordapp.com/attachments/986713553203515402/1066753227296608306/326240751_1042899663295752_826465983452364938_n.png'
  ];
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Product Details",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: Colors.grey)),
              child: Icon(Icons.card_travel),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(children: [
            // Container(
            //   height: 240,
            //   width: 420,
            //   color: Colors.grey[200],
            // ),
            Image.network(
              widget.image,
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 1,
            )
            // Stack(
            //   children: [
            //     CarouselSlider.builder(
            //         itemCount: widget.image.length,
            //         itemBuilder: (BuildContext context, int itemIndex,
            //                 int pageViewIndex) =>
            //             Image.network(widget.image[itemIndex]),
            //         options: CarouselOptions(
            //             enableInfiniteScroll: false,
            //             aspectRatio: 16 / 9,
            //             onPageChanged: (itemIndex, reason) =>
            //                 setState(() => sliderindex = itemIndex))),
            //     Padding(
            //       padding: const EdgeInsets.only(
            //         left: 340,
            //         top: 220,
            //       ),
            //       child: SizedBox(
            //         child: AnimatedSmoothIndicator(
            //           activeIndex: sliderindex,
            //           count: widget.image.length,
            //           effect: CustomizableEffect(
            //             dotDecoration: DotDecoration(
            //               width: 6,
            //               height: 15,
            //               color: Colors.grey,
            //               // dotBorder: DotBorder(
            //               //   padding: 2,
            //               //   width: 2,
            //               //   color: Colors.grey,
            //               // ),
            //               // borderRadius: BorderRadius.only(
            //               //     topLeft: Radius.circular(2),
            //               //     topRight: Radius.circular(16),
            //               //     bottomLeft: Radius.circular(16),
            //               //     bottomRight: Radius.circular(2)),
            //               borderRadius: BorderRadius.circular(16),
            //               verticalOffset: 0,
            //             ),
            //             activeDotDecoration: DotDecoration(
            //               width: 6,
            //               height: 15,
            //               color: Colors.blue,
            //               rotationAngle: 180,
            //               verticalOffset: 0,
            //               borderRadius: BorderRadius.circular(24),
            //               // dotBorder: DotBorder(
            //               //   padding: 2,
            //               //   width: 2,
            //               //   color: Colors.indigo,
            //               // ),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // )
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Text(
                  widget.names,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.002,
              ),
              Icon(
                Icons.favorite,
                color: Colors.red,
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 7,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 20,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "4.8  |",
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(width: 5),
              Text(
                "100 Reviews",
                style: TextStyle(color: Colors.blue, fontSize: 10),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.description,
              maxLines: 4,
              style: TextStyle(fontSize: 13),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "USD ${widget.price}",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 30,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              side: BorderSide(width: 1, color: Colors.blue),
                              backgroundColor: Colors.white),
                          child: Text(
                            "-",
                            style: TextStyle(color: Colors.blue),
                          )),
                    ),
                    Text(
                      "1",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 50,
                      height: 30,
                      child: ElevatedButton(
                          onPressed: () {},
                          style:
                              ElevatedButton.styleFrom(shape: CircleBorder()),
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 20),
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey[300], //color of divider
            height: 2, //height spacing of divider
            thickness: 1, //thickness of divier line
            //spacing at the end of divider
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, right: 310, top: 8),
            child: Text(
              "Promo code",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 8, right: 8),
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter Promo Code',
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 11))),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Apply Code",
                    style: TextStyle(color: Colors.blue, fontSize: 11),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height * 0.075,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.card_travel,
                        size: 17,
                      ),
                    ),
                    Text(
                      "Add item to bag",
                      style: TextStyle(fontSize: 12),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(""),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80.0),
                      child: Text(
                        'USD ${widget.price}',
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                )),
          )
        ],
      )),
    );
  }
}
