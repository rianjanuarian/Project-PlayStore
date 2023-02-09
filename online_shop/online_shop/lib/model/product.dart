import 'dart:convert';

import 'package:http/http.dart';

class Products {
  int? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  // Rating? rating;

  Products({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    // this.rating
  });

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
        id: json['id'] ?? 0,
        title: json['title'] ?? '',
        price: json['price'] ?? '',
        description: json['description'] ?? '',
        category: json['category'] ?? '',
        image: json['image'] ?? '');

    // rating =
    //     json['rating'] != null ? new Rating.fromJson(json['rating']) : null;
  }
  String url = 'https://fakestoreapi.com/products';
  Future<List<Products>> fetchProducts() async {
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      print(result);
      return result.map((e) => Products.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

// class Rating {
//   double? rate;
//   int? count;

//   Rating({this.rate, this.count});

//   Rating.fromJson(Map<String, dynamic> json) {
//     rate = json['rate'];
//     count = json['count'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['rate'] = this.rate;
//     data['count'] = this.count;
//     return data;
//   }
// }
