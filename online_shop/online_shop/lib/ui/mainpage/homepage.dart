import 'package:flutter/material.dart';
import 'package:online_shop/ui/mainpage/product_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: 25),
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Hello Ryan,",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text("What are you buying today?"),
            ),
            Container(
                margin: EdgeInsets.only(right: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(side: BorderSide.none),
                        backgroundColor: Colors.white),
                    onPressed: () {},
                    child: Icon(
                      Icons.card_travel,
                      color: Colors.black,
                    )))
          ],
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.grey[200],
                  disabledForegroundColor: Colors.grey[200],
                  disabledBackgroundColor: Colors.grey[200]),
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search products",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )),
        ),

        Container(
          height: 30,
          padding: EdgeInsets.only(bottom: 0),
          child: ListView.builder(
            shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(right: 20, left: 20),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.fromLTRB(10, 2, 4, 0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all()),
                child: Center(
                    child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.ac_unit_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text('category'),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                )),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Highlight"),
        ),

        // Container(
        //   height: 250,
        //   child: ListView.builder(
        //       scrollDirection: Axis.horizontal,
        //       itemCount: 15,
        //       itemBuilder: (BuildContext context, int index) => Padding(
        //             padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
        //             child: ProductCard(
        //                 name: "HEADPHONE",
        //                 description: "description",
        //                 price: 23000,
        //                 image:
        //                     "https://cdn.discordapp.com/attachments/674477685594128386/1065249632642420776/FB_IMG_1674045688699.jpg"),
        //           )),
        // ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("ALL PRODUCTS"),
        ),
        // Flexible(
        //   child: Container(
        //     child: ListView.builder(
        //         shrinkWrap: true,
        //         scrollDirection: Axis.horizontal,
        //         itemCount: 15,
        //         itemBuilder: (BuildContext context, int index) => Padding(
        //               padding: const EdgeInsets.fromLTRB(10, 2, 4, 5),
        //               child: ProductCard(
        //                   name: "HEADPHONE",
        //                   description: "description",
        //                   price: 23000,
        //                   image:
        //                       "https://cdn.discordapp.com/attachments/674477685594128386/1065249632642420776/FB_IMG_1674045688699.jpg"),
        //             )),
        //   ),
        // ),
      ],
    ));
  }
}
