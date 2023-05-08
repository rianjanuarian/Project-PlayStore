import 'package:flutter/material.dart';

import 'package:online_shop/ui/account/account_page.dart';
import 'package:online_shop/ui/favourite/favourite.dart';
import 'package:online_shop/ui/mainpage/homepage2.dart';
import 'package:online_shop/ui/order/order.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentTab = 0;
  final List<Widget> screens = [
    const AccountPage(),
    const FavouritePage(),
    const OrderPage()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage2();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.orange[900],
      //   onPressed: () async {},
      //   child: const Icon(Icons.qr_code_scanner),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Row kiri
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = const HomePage2();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: currentTab == 0 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 10,
                          color: currentTab == 0 ? Colors.blue : Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const OrderPage();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.access_time_filled_sharp,
                      color: currentTab == 1 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      'Order',
                      style: TextStyle(
                          fontSize: 10,
                          color: currentTab == 2 ? Colors.blue : Colors.grey),
                    ),
                  ],
                ),
              ),
              //Row kanan
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const FavouritePage();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: currentTab == 3 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      'Favourite',
                      style: TextStyle(
                          fontSize: 10,
                          color: currentTab == 2 ? Colors.blue : Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = const AccountPage();
                    currentTab = 4;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: currentTab == 4 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      'Account',
                      style: TextStyle(
                          fontSize: 10,
                          color: currentTab == 4 ? Colors.blue : Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
