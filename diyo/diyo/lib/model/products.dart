class Products {
  int id;
  String? restaurantname;
  List<String>? menuImage;
  List<String>? menu;
  List<int>? price;
  List<String>? category;
  String? resimage;
  String? foodKind;
  String? address;
  String? distance;
  String? opens;
  String? preptime;
  String? waktuBuka;
  List<MenuRestaurant>? menuRestaurant;
  Products(
      {required this.id,
      this.menuRestaurant,
      this.restaurantname,
      this.menuImage,
      this.menu,
      this.resimage,
      this.price,
      this.category,
      this.foodKind,
      this.address,
      this.distance,
      this.opens,
      this.waktuBuka,
      this.preptime});
}

class MenuRestaurant {
  String menu;
  String menuImage;
  int harga;

  MenuRestaurant(
      {required this.menu, required this.menuImage, required this.harga});
}

List<Products> products = [
  Products(
    id: 1,
    restaurantname: 'Soup Kitchen',
    menu: [
      'Chicken Soup',
      'Beef Soup',
      'Apple Juice',
      'Beef Welington',
      'Pecel Ayam'
    ],
    menuImage: [
      'https://cdn.discordapp.com/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550484668436/healthy-eating-ingredients-1296x728-header_1.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg'
    ],
    price: [20000, 30000, 40000, 20000, 30000],
    category: ['Chicken', 'Beef', 'Drink'],
    resimage:
        'https://media.discordapp.net/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg?width=1007&height=671',
    foodKind: 'Western',
    address: 'Jl Jember No 24 Kec. Ajung',
    distance: '1.2 km',
    opens: 'Buka',
    preptime: '20 Menit',
    waktuBuka: '19.00',
  ),
  Products(
    id: 2,
    restaurantname: 'Zeus Kitchen',
    menu: [
      'Chicken Soup',
      'Beef Soup',
      'Apple Juice',
      'Beef Welington',
      'Pecel Ayam'
    ],
    menuImage: [
      'https://cdn.discordapp.com/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550484668436/healthy-eating-ingredients-1296x728-header_1.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg'
    ],
    price: [20000, 30000, 40000, 20000, 30000],
    category: ['Chicken', 'Beef', 'Drink'],
    resimage:
        'https://media.discordapp.net/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg?width=1007&height=671',
    foodKind: 'Arab',
    address: 'Jl Jember No 24 Kec. Ajung',
    distance: '1.4 km',
    opens: 'Buka',
    preptime: '20 Menit',
    waktuBuka: '19.00',
  ),
  Products(
    id: 3,
    restaurantname: 'Alpha Kitchen',
    menu: [
      'Chicken Soup',
      'Beef Soup',
      'Apple Juice',
      'Beef Welington',
      'Pecel Ayam'
    ],
    menuImage: [
      'https://cdn.discordapp.com/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550484668436/healthy-eating-ingredients-1296x728-header_1.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg'
    ],
    price: [20000, 30000, 40000, 20000, 30000],
    category: ['Chicken', 'Beef', 'Drink'],
    resimage:
        'https://media.discordapp.net/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg?width=1007&height=671',
    foodKind: 'Western',
    address: 'Jl Jember No 24 Kec. Ajung',
    distance: '1.6 km',
    opens: 'Buka',
    preptime: '5 Menit',
    waktuBuka: '19.00',
  ),
  Products(
    id: 4,
    restaurantname: 'Athena Kitchen',
    menu: [
      'Chicken Soup',
      'Beef Soup',
      'Apple Juice',
      'Beef Welington',
      'Pecel Ayam'
    ],
    menuImage: [
      'https://cdn.discordapp.com/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550484668436/healthy-eating-ingredients-1296x728-header_1.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg'
    ],
    price: [20000, 30000, 40000, 20000, 30000],
    category: ['Chicken', 'Beef', 'Drink'],
    resimage:
        'https://media.discordapp.net/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg?width=1007&height=671',
    foodKind: 'Japan',
    address: 'Jl Bandung No 24 Kec. Ajung',
    distance: '1.8 km',
    opens: 'Buka',
    preptime: '10 Menit',
    waktuBuka: '19.00',
  ),
  Products(
    id: 1,
    restaurantname: 'Kratos Kitchen',
    menu: [
      'Chicken Soup',
      'Beef Soup',
      'Apple Juice',
      'Beef Welington',
      'Pecel Ayam'
    ],
    menuImage: [
      'https://cdn.discordapp.com/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550484668436/healthy-eating-ingredients-1296x728-header_1.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg',
      'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg'
    ],
    price: [20000, 30000, 40000, 20000, 30000],
    category: ['Chicken', 'Beef', 'Drink'],
    resimage:
        'https://media.discordapp.net/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg?width=1007&height=671',
    foodKind: 'Western',
    address: 'Jl Pekalongan No 24 Kec. Ajung',
    distance: '1.2 km',
    opens: 'Buka',
    preptime: '20 Menit',
    waktuBuka: '19.00',
  ),
];
