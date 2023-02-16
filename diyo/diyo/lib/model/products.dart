class Products {
  int id;
  String? restaurantname;
  List<String>? menu;
  List<int>? price;
  String? category;
  String? image;
  String? foodKind;
  String? address;
  String? distance;
  String? opens;
  String? preptime;
  Products(
      {required this.id,
      this.restaurantname,
      this.menu,
      this.image,
      this.price,
      this.category,
      this.foodKind,
      this.address,
      this.distance,
      this.opens,
      this.preptime});
}
