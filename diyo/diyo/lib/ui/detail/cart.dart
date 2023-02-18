import 'package:diyo/mainpage.dart';
import 'package:diyo/model/products.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../viewmodel/bloc/counter_bloc.dart';

// ignore: must_be_immutable
class Cart extends StatefulWidget {
  int price;
  int amount;
  Products item;
  int index;
  String scans;
  Cart(
      {super.key,
      required this.scans,
      required this.price,
      required this.amount,
      required this.item,
      required this.index});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: FloatingActionButton.extended(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: Colors.orange[900],
            onPressed: () {
              Get.offAll(() => const MainPage());
            },
            label: BlocProvider(
              create: (context) => CounterBloc(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.red[900]),
                      child: Center(child: Text(widget.amount.toString()))),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                  const Text("Checkout"),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                  Text(
                    NumberFormat.currency(
                            locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                        .format(widget.price),
                  )
                ],
              ),
            )),
      ),
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text('Pesanan (Meja-Diyo-${widget.scans})'),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Pesananku",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Add Menu',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.06,
                    height: MediaQuery.of(context).size.height * 0.03,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.orange[900]),
                    child: Center(
                        child: Text(
                      '${widget.amount}x',
                      style: const TextStyle(color: Colors.white),
                    ))),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                Text(
                  widget.item.menu![widget.index],
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.55,
                ),
                Text(
                  NumberFormat.currency(
                          locale: 'id', symbol: '', decimalDigits: 0)
                      .format(widget.item.price![widget.index]),
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[400],
            height: 25,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, top: 20),
            child: Row(
              children: [
                const Text('Subtotal'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.70,
                ),
                Text(
                  NumberFormat.currency(
                          locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                      .format(widget.price),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[400],
            height: 25,
            thickness: 7,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Row(
              children: [
                const Text(
                  "Kode Promo",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                ),
                const SizedBox(
                  width: 80,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Masukkan',
                      hintStyle: TextStyle(fontSize: 15),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listCart() {
    return SizedBox(
      height: 400,
      child: ListView.builder(
          itemCount: widget.item.menu![widget.index].length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Text(widget.item.menu![widget.index]),
                Text(widget.item.price![widget.index].toString()),
              ],
            );
          }),
    );
  }
}
