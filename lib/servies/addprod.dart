import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:storapp/models/productModel.dart';

class addprodecet{
  // data to body
  Future<product> addpro({required String title , required String price , required String des , required String image , required String catogore })async{
    http.Response response =await http.post(Uri.parse('https//fakestoreapi.com/products'), body:{
      'title' :title ,
      'price' : price,
      'description':des,
      'image' : image,
      'category' :catogore ,
    });

    Map<String,dynamic> data = jsonDecode(response.body) ;

  //  product.fromJson(data);

    return product.fromJson(data);
  }
}