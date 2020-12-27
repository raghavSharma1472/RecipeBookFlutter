import 'networking.dart';
import 'package:recipe_book_flutter/models/product.dart';

const url = 'https://food2fork.ca/api/recipe/search/?page=2&query=';


class SearchData {
  Future<List<Product>> funForSearchData(String aa) async {
    Networking networking = Networking(url + aa);
    var jasonData = await networking.getData();
    List<Product> list = List<Product>();
    for (int i = 0; i < 30; i++) {
      Product product = Product(
        id: i,
        title: jasonData['results'][i]['title'],
        image: jasonData['results'][i]['featured_image'],
        description: jasonData['results'][i]['ingredients'],
      );
      list.add(product);
    }
    return list;
  }
}