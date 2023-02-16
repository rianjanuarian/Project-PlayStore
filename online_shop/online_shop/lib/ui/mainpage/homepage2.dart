import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_shop/model/apiservices.dart';

import 'package:online_shop/ui/mainpage/product_card.dart';
import 'package:online_shop/ui/mainpage/product_list/product_list.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  final iconCategory = [
    Icon(Icons.computer),
    Icon(Icons.headset),
    Icon(Icons.phone_android_rounded),
    Icon(Icons.category_outlined)
  ];
  int _selectedNavbar = 0;
  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

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
                  Text(
                    "Hello Ryan,",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("What are you buying today?"),
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
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200], shape: StadiumBorder()),
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
            padding: const EdgeInsets.only(
              bottom: 20.0,
            ),
            child: SizedBox(
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) => Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 5, 0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                child: iconCategory[index],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 3.0, right: 3),
                                child: Text(''),
                              )
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
                Text("Latest Products"),
                InkWell(
                  child: Text(
                    " See all",
                    style: TextStyle(color: Colors.blue[800]),
                  ),
                  onTap: () {
                    print("W");
                    Get.to(() => ProductList());
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 250,
            child: FutureBuilder(
                future: Services.listProduk(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        // snapshot.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          final value = snapshot.data![index];
                          return Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                              child: ProductCard(
                                  descriptionp: value.description ?? "  ",
                                  pricep: value.price ?? 0,
                                  imagep: value.image ?? "",
                                  namep: value.title ?? "")
                              // ProductCard(
                              //     name: "Headphone",
                              //     description: "Great Headphone",
                              //     price: 23000,
                              //     image:
                              //         "https://media.discordapp.net/attachments/418302783331106818/1066981198280273960/google_logo.png?width=671&height=671"),
                              );
                        });
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
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
                    style: TextStyle(color: Colors.blue[800]),
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 300,
            child: FutureBuilder(
                future: Services.listProduk(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        // snapshot.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          final value = snapshot.data![index];
                          return Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                              child: ProductCard(
                                  descriptionp: value.description ?? "  ",
                                  pricep: value.price ?? 0,
                                  imagep: value.image ?? "",
                                  namep: value.title ?? "")
                              // ProductCard(
                              //     name: "Headphone",
                              //     description: "Great Headphone",
                              //     price: 23000,
                              //     image:
                              //         "https://media.discordapp.net/attachments/418302783331106818/1066981198280273960/google_logo.png?width=671&height=671"),
                              );
                        });
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.white),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.favorite),
          //     label: 'Favourite',
          //     backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Profile',
              backgroundColor: Colors.white),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
