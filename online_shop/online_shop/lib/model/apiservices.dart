import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:online_shop/model/categories.dart';

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

  static Future<Produk?> getById(int id) async {
    try {
      String url = 'https://fakestoreapi.com/products/$id';
      var response = await Dio().get(url);
      if (response.statusCode == 200) {
        return Produk(
            id: response.data['id'],
            title: response.data['title'],
            price: response.data['price'],
            image: response.data['image'],
            description: response.data['description']);
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<List<Categories>> categories() async {
    try {
      String url = 'https://fakestoreapi.com/products/categories';
      var response = await Dio().get(url);
      final List data = response.data;

      if (response.statusCode == 200) {
        return data.map((e) => Categories(category: e)).toList();
      }
      throw Exception('failed to load');
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

//'https://fakestoreapi.com/products'
