import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:online_shop/model/product.dart';
import 'package:online_shop/ui/mainpage/product_card.dart';
import 'package:online_shop/ui/mainpage/slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

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
  Products? products;
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
            Text(
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
            Container(
              height: 240,
              width: 420,
              color: Colors.grey[200],
            ),
            Stack(
              children: [
                CarouselSlider.builder(
                    itemCount: urlImage.length,
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        Container(
                          child: Image.network(urlImage[itemIndex]),
                        ),
                    options: CarouselOptions(
                        enableInfiniteScroll: false,
                        aspectRatio: 16 / 9,
                        onPageChanged: (itemIndex, reason) =>
                            setState(() => sliderindex = itemIndex))),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 340,
                    top: 220,
                  ),
                  child: SizedBox(
                    child: AnimatedSmoothIndicator(
                      activeIndex: sliderindex,
                      count: urlImage.length,
                      effect: CustomizableEffect(
                        dotDecoration: DotDecoration(
                          width: 6,
                          height: 15,
                          color: Colors.grey,
                          // dotBorder: DotBorder(
                          //   padding: 2,
                          //   width: 2,
                          //   color: Colors.grey,
                          // ),
                          // borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(2),
                          //     topRight: Radius.circular(16),
                          //     bottomLeft: Radius.circular(16),
                          //     bottomRight: Radius.circular(2)),
                          borderRadius: BorderRadius.circular(16),
                          verticalOffset: 0,
                        ),
                        activeDotDecoration: DotDecoration(
                          width: 6,
                          height: 15,
                          color: Colors.blue,
                          rotationAngle: 180,
                          verticalOffset: 0,
                          borderRadius: BorderRadius.circular(24),
                          // dotBorder: DotBorder(
                          //   padding: 2,
                          //   width: 2,
                          //   color: Colors.indigo,
                          // ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "AirPods Max",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.50,
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
              "AirPods Max merancang ulang headphone over-ear. Driver yang didesain dinamis oleh Apple menghadirkan audio high-fidelity yang menghanyutkan. Setiap detailnya, mulai dari kanopi hingga bantalan, dirancang agar tepat untuk semua. Peredam Kebisingan Aktif terdepan di industri meredam kebisingan dari luar, sedangkan mode Transparansi memungkinkan suara eksternal masuk. Dan audio spasial dengan pelacakan gerakan kepala dinamis menghadirkan suara yang mengelilingi Anda seperti di bioskop.1",
              maxLines: 4,
              style: TextStyle(fontSize: 13),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Rp.10.000.000",
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
          )
        ],
      )),
    );
  }
}
