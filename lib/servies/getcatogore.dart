import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:storapp/models/productModel.dart';
class catagore{

  Future<List<product>> getcatogre({required String category_name })async{
    //اهم اشي هان انك تشيل النقتنين الى بكونو في البوست مان
    Uri uri = Uri.parse('https://fakestoreapi.com/products/category/$category_name');
    http.Response response =await http.get(uri);
    // pest code
   if(response.statusCode == 200){
     List <dynamic> data= jsonDecode(response.body);

     List<product> dataprodect = [];

     for(int i = 0 ; i < data .length ; i++){
       dataprodect.add(product.fromJson(data[i]));
     }
     return dataprodect ;
   }
   else{
     throw Exception("error");
   }
  }
}