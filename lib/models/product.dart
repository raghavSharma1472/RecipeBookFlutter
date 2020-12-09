class Product {
  final int id;
  final String title, description, image, price;

  Product({this.id, this.price, this.title, this.description, this.image});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    price: "NonVeg",
    title: "Recipe Number 1",
    image: "assets/images/Item_1.png",
    description: "Ingridient 1\nIngridient 2\nIngridient 3",
  ),
  Product(
    id: 2,
    price: "Veg",
    title: "Recipe Number 2",
    image: "assets/images/Item_2.png",
    description: "Ingridient 1\nIngridient 2\nIngridient 3",
  ),
  Product(
    id: 3,
    price: "NonVeg",
    title: "Recipe Number 3",
    image: "assets/images/Item_3.png",
    description: "Ingridient 1\nIngridient 2\nIngridient 3",
  ),
  Product(
    id: 4,
    price: "Veg",
    title: "Recipe Number 4",
    image: "assets/images/Item_2.png",
    description: "Ingridient 1\nIngridient 2\nIngridient 3",
  ),
  Product(
    id: 5,
    price: "NonVeg",
    title: "Recipe Number 5",
    image: "assets/images/Item_1.png",
    description: "Ingridient 1\nIngridient 2\nIngridient 3",
  ),
  Product(
    id: 6,
    price: "Veg",
    title: "Recipe Number 6",
    image: "assets/images/Item_3.png",
    description: "Ingridient 1\nIngridient 2\nIngridient 3",
  ),
];
