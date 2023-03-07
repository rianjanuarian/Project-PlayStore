class Categories {
  int? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;

  Categories(
      {this.id,
      this.category,
      this.title,
      this.description,
      this.image,
      this.price});

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(category: json['category']);
  }
}
