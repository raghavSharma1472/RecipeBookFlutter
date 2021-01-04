import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipe_book_flutter/models/product.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';


///SAVING PRODUCT IMAGE



Future<Product> changing(Product product) async {
  var tempDir = await getExternalStorageDirectory();
  File file = File('${tempDir.path}'+(product.title));
  http.Response response = await http.get(product.image);
  await file.writeAsBytes(response.bodyBytes);
  Product savedProduct = Product(
      id: product.id,
      description: product.description,
      title: product.title,
      image: file.path,
  );

  return savedProduct;
}





///BELOW CODE DEALS WITH THE SAVING DATA IN PHONE


void insertData(Product product )async{
try{
  var x= {
    'id':product.id,
    'title': product.title,
    'image':product.image,
    'description': product.description
  };
  var tempDir = await getExternalStorageDirectory();
  File file = File('${tempDir.path} 01');


  var t = await file.readAsString();
//  var xx = jsonDecode(t);
//  print(xx);
  var v =jsonDecode(t);
  print(v['savedProduct'][0]['id']);
  await v['savedProduct'].add(x);
  await file.delete();
  var json = jsonEncode(v);
  await file.writeAsString(json);
}catch(e){
    var v ={
    "savedProduct":
        [
         {
           'id':product.id,
           'title': product.title,
           'image':product.image,
           'description': product.description
         },
        ]
  };
    var tempDir = await getExternalStorageDirectory();
    File file = File('${tempDir.path} 01');
  var json =jsonEncode(v);
  file.writeAsString(json);
}
}

dynamic readData()async{
  var tempDir = await getExternalStorageDirectory();
  File file = File('${tempDir.path} 01');
  var v= await file.readAsString();
  dynamic x = jsonDecode(v);
  print(x);
  return x;
}