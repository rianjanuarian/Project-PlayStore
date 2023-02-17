import 'package:diyo/model/products.dart';
import 'package:diyo/ui/detail/productlist.dart';
import 'package:diyo/ui/detail/restaurantdetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    // final produk = [
    //   Products(
    //       id: 1,
    //       restaurantname: 'Warung Merah',
    //       menu: ['Ayam Goreng', 'Jeroan', 'Es teh'],
    //       menuImage: [
    //         'https://media.discordapp.net/attachments/1076057192945434624/1076057550853771284/pexels-ash-376464.jpg?width=1099&height=671',
    //         'https://media.discordapp.net/attachments/1076057192945434624/1076057550853771284/pexels-ash-376464.jpg?width=1099&height=671',
    //         'https://media.discordapp.net/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg?width=1007&height=671'
    //       ],
    //       price: [20000, 30000, 50000],
    //       category: ['Ayam', 'Jeroan', 'Minuman'],
    //       resimage:
    //           'https://media.discordapp.net/attachments/1076057192945434624/1076057550484668436/healthy-eating-ingredients-1296x728-header_1.jpg',
    //       foodKind: 'Western',
    //       address: 'Jl Surabaya No 24 ',
    //       distance: '1.2 km',
    //       opens: 'Buka',
    //       preptime: '20 Menit',
    //       waktuBuka: '19.00',
    //       menuRestaurant: [
    //         MenuRestaurant(
    //             menu: 'Chicken sop',
    //             menuImage:
    //                 'https://cdn.discordapp.com/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg',
    //             harga: 20000),
    //         MenuRestaurant(
    //             menu: 'Sapi sop',
    //             menuImage:
    //                 'https://cdn.discordapp.com/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg',
    //             harga: 10000)
    //       ])
    // ];

    String limitWords(String input, int wordLimit) {
      List<String> words = input.split(' ');
      if (words.length <= wordLimit) {
        return input;
      }
      return words.take(wordLimit).join(' ');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("D I Y O"),
        backgroundColor: Colors.orange[900],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, bottom: 20),
            child: Text("Semua Restoran"),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RestaurantDetail(
                                  items: products[index],
                                  index: index,
                                )),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                width: 80,
                                padding: EdgeInsets.only(
                                    left: 8, right: 8, bottom: 4, top: 4),
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(5),
                                        topRight: Radius.circular(5))),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.access_time_rounded,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      (products[index].preptime ?? ''),
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(260, 46, 0, 4),
                            child: Text(
                              (products[index].distance ?? ''),
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          Row(
                            children: [
                              Image.network(
                                products[index].resimage ?? '',
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Text(
                                      (products[index].restaurantname ?? ''),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Text(limitWords(
                                      (products[index].address ?? ''), 4)),
                                  Text(
                                    (products[index].foodKind ?? ''),
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
