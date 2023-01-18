import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.04),
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
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
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
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                bottom: 490,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.only(right: 20, left: 10, top: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.fromLTRB(10, 2, 4, 5),
                  child: Card(
                    shape: StadiumBorder(),
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
          )
        ],
      ),
    );
  }
}
