import 'dart:convert';
import 'package:http/http.dart' as http;

class Networking{

  final String url;
  Networking(this.url);

  Future getData ()async{
    try{
      var response = await http.get(url,headers: {'Authorization':'Token 9c8b06d329136da358c2d00e76946b0111ce2c48'});
      print (response.statusCode);
      var data = response.body;
      return jsonDecode(data);
    }catch(e){
      print(e);
    }
  }
}