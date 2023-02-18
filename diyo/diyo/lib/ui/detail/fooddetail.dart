import 'package:diyo/model/products.dart';
import 'package:diyo/ui/detail/cart.dart';
import 'package:diyo/ui/detail/restaurantdetail.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../viewmodel/bloc/counter_bloc.dart';

// ignore: must_be_immutable
class FoodDetail extends StatefulWidget {
  final Products item;
  final int index;
  final String? scans;
  int? amount;
  int? price;

  FoodDetail(
      {super.key,
      required this.item,
      required this.index,
      this.scans,
      this.amount,
      this.price});
  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Colors.orange[900],
          onPressed: () {
            Get.to(() => Cart(
                  scans: widget.scans!,
                  amount: widget.amount!,
                  price: widget.price!,
                  item: widget.item,
                  index: widget.index,
                ));
          },
          label: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red[900]),
                  child: Center(child: BlocBuilder<CounterBloc, CounterState>(
                    builder: (context, state) {
                      widget.amount = state.value!;
                      return Text(widget.amount!.isNegative
                          ? '0'
                          : widget.amount.toString());
                    },
                  ))),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              const Text("Checkout"),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  widget.price =
                      widget.item.price![widget.index] * state.value!;
                  return Text(
                    NumberFormat.currency(
                            locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                        .format(widget.price!.isNegative ? 0 : widget.price),
                  );
                },
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topStack(),
            description(),
          ],
        ),
      ),
    );
  }

  Widget topStack() {
    return Stack(
      children: [
        Image.network(
          widget.item.menuImage![widget.index],
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.3,
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.05,
          top: MediaQuery.of(context).size.height * 0.05,
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.orange[900],
                borderRadius: BorderRadius.circular(60)),
            child: IconButton(
              iconSize: 15,
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
              onPressed: () {
                Get.off(() => RestaurantDetail(
                      items: widget.item,
                      index: widget.index,
                      scans: widget.scans!,
                      amount: widget.amount,
                      price: widget.price,
                    ));
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget description() {
    CounterBloc cbloc = BlocProvider.of<CounterBloc>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.item.menu![widget.index],
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            Text(
              NumberFormat.currency(locale: 'id', symbol: '', decimalDigits: 0)
                  .format(widget.item.price![widget.index]),
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
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Special Request',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        const TextField(
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
                  onPressed: () {
                    cbloc.add(Decrement());
                  },
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
              child: BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text(
                      state.value!.isNegative ? '0' : state.value!.toString());
                },
              ),
            ),
            SizedBox(
              width: 40,
              child: ElevatedButton(
                  onPressed: () {
                    cbloc.add(Increment());
                  },
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
