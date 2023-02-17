import 'package:diyo/model/products.dart';
import 'package:diyo/ui/detail/fooddetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:qrscan/qrscan.dart';

class RestaurantDetail extends StatefulWidget {
  final Products items;
  final int index;
  final String scans;
  RestaurantDetail(
      {required this.items, required this.index, required this.scans});

  @override
  State<RestaurantDetail> createState() => _RestaurantDetailState();
}

class _RestaurantDetailState extends State<RestaurantDetail> {
  bool isSelected = false;
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [stackTop(), description(), menuItem()],
        ),
      ),
    );
  }

  Widget stackTop() {
    return Stack(
      children: [
        Image.network(
          widget.items.resimage ?? '',
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.34,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 30),
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
        Positioned(
          top: MediaQuery.of(context).size.height * 0.25,
          left: MediaQuery.of(context).size.width * 0.02,
          child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.03,
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
                    "No meja anda adalah ${widget.scans}",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ))),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.31,
          left: MediaQuery.of(context).size.width * 0.88,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.08,
            height: MediaQuery.of(context).size.height * 0.04,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: InkWell(
                onTap: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                child: isSelected
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                        size: 25,
                      )),
          ),
        )
      ],
    );
  }

  Widget description() {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          widget.items.restaurantname ?? '',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
        SizedBox(
          height: 15,
        ),
        Text(widget.items.foodKind ?? ''),
        SizedBox(
          height: 15,
        ),
        Text(widget.items.address ?? ''),
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
              (widget.items.opens ?? '').toUpperCase(),
              style: TextStyle(color: Colors.orange[900]),
            ),
            SizedBox(
              width: 5,
            ),
            Text("until ${widget.items.waktuBuka ?? ''} today"),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.orange[900]),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    size: 15,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.items.distance ?? '',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.02,
          child: ListView.builder(
              itemCount: widget.items.category!.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                      decoration: BoxDecoration(
                          color: _selectedIndex == index
                              ? Colors.orange[900]
                              : Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        widget.items.category![index],
                        style: TextStyle(
                            color: _selectedIndex == index
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ]),
    );
  }

  Widget menuItem() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.items.menu!.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext contex, int index) {
          return InkWell(
            onTap: () {
              Get.to(() => FoodDetail(
                    item: products[index],
                    index: index,
                  ));
            },
            child: Stack(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.9, top: 35),
                    child: Text(
                      NumberFormat.currency(
                              locale: 'id', symbol: '', decimalDigits: 0)
                          .format(widget.items.price![index]),
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                  child: Row(
                    children: [
                      Image.network(
                        widget.items.menuImage![index],
                        width: 80,
                        height: 80,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.items.menu![index],
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
