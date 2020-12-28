import 'package:recipe_book_flutter/services/jsonToClassData.dart';

class Product {
  final int id;
  final String title, image, price;
  final List<dynamic> description;

  Product({this.id, this.price, this.title, this.description, this.image});
}


List<String> dis = ['s'];
// list of products
// for our demo



List<Product> products = [
  Product(
    id: 1,
    price: "NonVeg",
    title: "Recipe Number 1",
//    image: "assets/images/Item_1.png",
    image: 'https://img.grouponcdn.com/deal/3kNMH5DUwWGv98w31P2Q4MSbirb7/3k-2048x1229/v1/c700x420.jpg',
    description: ["Ingridient 1","Ingridient 2"," Ingridient 3"],
  ),
  Product(
    id: 2,
    price: "Veg",
    title: "Recipe Number 2",
//    image: "assets/images/Item_2.png",
    image: 'https://brixxpizza.com/wp-content/uploads/2019/11/brixx_kids.jpg',
    description: ["Ingridient 1","Ingridient 2","Ingridient 3"],
  ),
  Product(
    id: 3,
    price: "NonVeg",
    title: "Recipe Number 3",
//    image: "assets/images/Item_3.png",
    image: 'https://cdn.cnn.com/cnnnext/dam/assets/140430115517-06-comfort-foods.jpg',
    description: ["Ingridient 1","Ingridient 2","Ingridient 3"],
  ),
  Product(
    id: 4,
    price: "Veg",
    title: "Recipe Number 4",
//    image: "assets/images/Item_2.png",
    image: 'https://img.grouponcdn.com/deal/3kNMH5DUwWGv98w31P2Q4MSbirb7/3k-2048x1229/v1/c700x420.jpg',
    description: ["Ingridient 1","Ingridient 2","Ingridient 3"],
  ),
  Product(
    id: 5,
    price: "NonVeg",
    title: "Recipe Number 5",
//    image: "assets/images/Item_1.png",
    image: 'https://cdn.cnn.com/cnnnext/dam/assets/140430115517-06-comfort-foods.jpg',
    description: ["Ingridient 1","Ingridient 2","Ingridient 3"],
  ),
  Product(
    id: 6,
    price: "Veg",
    title: "Recipe Number 6",
//    image: "assets/images/Item_3.png",
    image: 'https://brixxpizza.com/wp-content/uploads/2019/11/brixx_kids.jpg',
    description: ["Ingridient 1","Ingridient 2","Ingridient 3"],
  ),
];

