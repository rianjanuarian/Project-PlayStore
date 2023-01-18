import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(0, 25, 340, 0),
              child: Text(
                "Hello Ryan",
                style: TextStyle(fontWeight: FontWeight.w700),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("What are you buying today"),
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
          Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 10),
              child: TextField(
                onTap: () {},
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 192, 179, 179),
                  ),
                  prefixStyle: const TextStyle(color: Colors.amber),
                  labelText: "Search Product",
                  floatingLabelStyle: const TextStyle(color: Colors.black),
                ),
              ))
        ],
      ),
    );
  }
}
