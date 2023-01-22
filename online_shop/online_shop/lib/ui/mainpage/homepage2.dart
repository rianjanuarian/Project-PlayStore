import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_shop/ui/mainpage/product_card.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 20, bottom: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello Ryan,"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "What are you buying today ?",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 2, color: Colors.grey)),
                          child: Icon(Icons.card_travel),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
            child: ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.grey[200]),
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
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: SizedBox(
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 5, 0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          child: Row(
                            children: [
                              Icon(
                                Icons.category,
                              ),
                              Text("Category")
                            ],
                          ),
                        ),
                      )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Trending sales"),
                InkWell(
                  child: Text(
                    " See all",
                    style: TextStyle(color: Colors.amber[800]),
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 220,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 5, 0),
                      child: ProductCard(
                          name: "HEADPHONE",
                          description: "description",
                          price: 23000,
                          image:
                              "https://media.discordapp.net/attachments/418302783331106818/1065648213580853358/google_logo.png?width=671&height=671"),
                    )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recently viewed"),
                InkWell(
                  child: Text(
                    " See all",
                    style: TextStyle(color: Colors.amber[800]),
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 350,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 5, 0),
                      child: ProductCard(
                          name: "HEADPHONE",
                          description: "description",
                          price: 23000,
                          image:
                              "https://media.discordapp.net/attachments/418302783331106818/1065648213580853358/google_logo.png?width=671&height=671"),
                    )),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourite',
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
              backgroundColor: Colors.amber),
        ],
      ),
    );
  }
}
