import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:online_shop/model/listproduk.dart';
import 'package:online_shop/model/product.dart';

abstract class Services {
  static Future<List<Produk>> listProduk() async {
    try {
      String url = 'https://fakestoreapi.com/products';
      var response = await Dio().get(url);
      final List data = response.data;
      if (response.statusCode == 200) {
        return data
            .map((e) =>
                Produk(title: e['title'], price: e['price'], image: e['image']))
            .toList();
      }
      throw Exception('failed to load');
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
//'https://fakestoreapi.com/products'