import 'package:diyo/model/products.dart';
import 'package:diyo/ui/detail/restaurantdetail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrscan/qrscan.dart ' as scanner;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    String limitWords(String input, int wordLimit) {
      List<String> words = input.split(' ');
      if (words.length <= wordLimit) {
        return input;
      }
      return words.take(wordLimit).join(' ');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("D I Y O"),
        backgroundColor: Colors.orange[900],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10, bottom: 20),
            child: Text("Semua Restoran"),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () async {
                      String? scans;
                      scans = await scanner.scan();
                      setState(() {});
                      try {
                        if (scans!.isEmpty) {
                          final snackBar = SnackBar(
                            content: const Text('Scan gagal'),
                            backgroundColor: (Colors.black12),
                            action: SnackBarAction(
                              label: 'dismiss',
                              onPressed: () {},
                            ),
                          );
                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else {
                          Get.off(() => RestaurantDetail(
                                items: products[index],
                                index: index,
                                scans: scans ?? '',
                              ));
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                width: 80,
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, bottom: 4, top: 4),
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5),
                                        topRight: Radius.circular(5))),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.access_time_rounded,
                                      size: 15,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      (products[index].preptime ?? ''),
                                      style: const TextStyle(fontSize: 10),
                                    ),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(260, 46, 0, 4),
                            child: Text(
                              (products[index].distance ?? ''),
                              style: const TextStyle(color: Colors.red),
                            ),
                          ),
                          Row(
                            children: [
                              Image.network(
                                products[index].resimage ?? '',
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Text(
                                      (products[index].restaurantname ?? ''),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Text(limitWords(
                                      (products[index].address ?? ''), 4)),
                                  Text(
                                    (products[index].foodKind ?? ''),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700),
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
