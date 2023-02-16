import 'package:dio/dio.dart';

import 'package:online_shop/model/listproduk.dart';

abstract class Services {
  static Future<List<Produk>> listProduk() async {
    try {
      String url = 'https://fakestoreapi.com/products';
      var response = await Dio().get(url);
      final List data = response.data;
      if (response.statusCode == 200) {
        return data
            .map((e) => Produk(
                title: e['title'],
                price: e['price'],
                category: e['category'],
                description: e['description'],
                image: e['image']))
            .toList();
      }
      throw Exception('failed to load');
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  // static Future<List<Kategori>> listCategory() async {
  //   String url2 = 'https://fakestoreapi.com/products/categories';
  //   var response = await Dio().get(url2);
  //   final List data = response.data;
  //   return data.map((e) => Kategori(kategori: e['categories'])).toList();
  // }
}
//'https://fakestoreapi.com/products'