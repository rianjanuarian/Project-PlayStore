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
  // MenuRestaurant? menuRestaurant;
  Products(
      {required this.id,
      // this.menuRestaurant,
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
      this.preptime});

  static List<Products> products = [
    Products(
      id: 1,
      restaurantname: 'Soup Kitchen',
      menu: ['Chicken Soup, Beef Soup, Apple Juice'],
      menuImage: [
        'https://cdn.discordapp.com/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg',
        'https://media.discordapp.net/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg',
        'https://media.discordapp.net/attachments/1076057192945434624/1076057550484668436/healthy-eating-ingredients-1296x728-header_1.jpg'
      ],
      price: [20000, 30000, 50000],
      category: ['Chicken', 'Beef', 'Drink'],
      resimage:
          'https://media.discordapp.net/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg?width=1007&height=671',
      foodKind: 'Western',
      address: 'Jl Jember No 24 Kec. Ajung',
      distance: '1.2 km',
      opens: 'Buka',
      preptime: '20 Menit',
    ),
    Products(
        id: 2,
        restaurantname: 'District 10',
        menu: ['Tilapia, Nachos, Beef Bowl'],
        menuImage: [
          'https://media.discordapp.net/attachments/1076057192945434624/1076057550853771284/pexels-ash-376464.jpg?width=1099&height=671',
          'https://media.discordapp.net/attachments/1076057192945434624/1076057550853771284/pexels-ash-376464.jpg?width=1099&height=671',
          'https://media.discordapp.net/attachments/1076057192945434624/1076057310159446026/Good_Food_Display_-_NCI_Visuals_Online.jpg?width=1007&height=671'
        ],
        price: [30000, 40000, 60000],
        category: ['Chicken', 'Chips', 'Beef'],
        resimage:
            'https://media.discordapp.net/attachments/1076057192945434624/1076057550853771284/pexels-ash-376464.jpg?width=1099&height=671',
        foodKind: 'Western',
        address: 'Jl Ahmad Yani No 21 Bondowoso',
        distance: '1.3 km',
        opens: 'Buka',
        preptime: '20 Menit'),
    Products(
        id: 3,
        restaurantname: 'Food Nine',
        menu: ['Chicken Ramen, Gyoza, Beef Bowl'],
        menuImage: ['', '', ''],
        price: [34000, 20000, 30000],
        category: ['Chicken', 'Sides', 'Beef'],
        resimage:
            'https://cdn.discordapp.com/attachments/1076057192945434624/1076057550090416159/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg',
        foodKind: 'Japanese',
        address: 'Jl Pekalongan No 21 Pekalongan',
        distance: '1.3 km',
        opens: 'Buka',
        preptime: '20 Menit'),
    Products(
        id: 4,
        restaurantname: 'Warung Tegal',
        menu: ['Ayam Goreng, Jeroan, Es teh'],
        menuImage: ['', '', ''],
        price: [20000, 30000, 50000],
        category: ['Ayam', 'Jeroan', 'Minuman'],
        resimage:
            'https://media.discordapp.net/attachments/1076057192945434624/1076057550484668436/healthy-eating-ingredients-1296x728-header_1.jpg',
        foodKind: 'Western',
        address: 'Jl Surabaya No 24 ',
        distance: '1.2 km',
        opens: 'Buka',
        preptime: '20 Menit')
  ];
}

// class MenuRestaurant {
//   String menu;
//   String menuImage;
//   String category;

//   MenuRestaurant(
//       {required this.menu, required this.menuImage, required this.category});
// }
