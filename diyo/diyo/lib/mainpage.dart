import 'package:diyo/ui/page/akun.dart';
import 'package:diyo/ui/page/favorit.dart';
import 'package:diyo/ui/page/homepage.dart';
import 'package:diyo/ui/page/pesanan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentTab = 0;
  final List<Widget> screens = [Akun(), Favorit(), Pesanan()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Homepage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[900],
        onPressed: () {},
        child: Icon(Icons.qr_code_scanner),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Row kiri
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Homepage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0
                              ? Colors.orange[900]
                              : Colors.grey,
                        ),
                        Text(
                          'Restoran',
                          style: TextStyle(
                              fontSize: 10,
                              color: currentTab == 0
                                  ? Colors.orange[900]
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Pesanan();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_time_filled_sharp,
                          color: currentTab == 1
                              ? Colors.orange[900]
                              : Colors.grey,
                        ),
                        Text(
                          'Pesanan',
                          style: TextStyle(
                              fontSize: 10,
                              color: currentTab == 2
                                  ? Colors.orange[900]
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              //Row kanan
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Favorit();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: currentTab == 3
                              ? Colors.orange[900]
                              : Colors.grey,
                        ),
                        Text(
                          'Favorit',
                          style: TextStyle(
                              fontSize: 10,
                              color: currentTab == 2
                                  ? Colors.orange[900]
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Akun();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentTab == 4
                              ? Colors.orange[900]
                              : Colors.grey,
                        ),
                        Text(
                          'Akun',
                          style: TextStyle(
                              fontSize: 10,
                              color: currentTab == 4
                                  ? Colors.orange[900]
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
