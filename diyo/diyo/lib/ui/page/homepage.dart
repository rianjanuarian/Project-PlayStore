import 'package:diyo/ui/detail/productlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductList? productList;
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
                itemCount: 3,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ProductList(
                          id: 1,
                          namarestoran: 'Soup Kitchen',
                          alamatRestoran: 'Jl Jember no 14 ',
                          kategori: 'Chinese Food',
                          prep: '5 menit',
                          image:
                              'https://media.discordapp.net/attachments/418302783331106818/1066981198280273960/google_logo.png?width=671&height=671',
                          jarak: '20 km'),
                      ProductList(
                          id: 2,
                          namarestoran: 'District 21',
                          alamatRestoran: 'Jl Jember no 14 ',
                          kategori: 'Chinese Food',
                          prep: '5 menit',
                          image:
                              'https://media.discordapp.net/attachments/418302783331106818/1066981198280273960/google_logo.png?width=671&height=671',
                          jarak: '20 km'),
                      ProductList(
                          id: 3,
                          namarestoran: 'Foodstall',
                          alamatRestoran: 'Jl Jember no 14 ',
                          kategori: 'Chinese Food',
                          prep: '5 menit',
                          image:
                              'https://media.discordapp.net/attachments/418302783331106818/1066981198280273960/google_logo.png?width=671&height=671',
                          jarak: '20 km'),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
