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
