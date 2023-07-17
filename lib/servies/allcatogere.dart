import 'dart:convert';

import 'package:http/http.dart' as http;
class allcatogerserves{
  Future<List<String>> getcatogere()async{
    Uri uri = Uri.parse('https://fakestoreapi.com/products/categories');
    http.Response response =await http.get(uri);
   List<String> data = jsonDecode(response.body);

   return data ;

  }
}