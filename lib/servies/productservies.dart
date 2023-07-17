import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:storapp/models/productModel.dart';
class prodectservies{
   // الفنكشن لا تاخد اشي لانه لا يوجد : في الرابط
  Future<List<product>> getprodect() async {
  Uri uri = Uri.parse('https://fakestoreapi.com/products');
  http.Response response = await http.get(uri);
  // البيانات الراجعه على شكل ليست
if(response.statusCode == 200) {
  List <dynamic> data = jsonDecode(response.body);
//انشاء ليست فارغه من نوع برودكت لوضع فيها البيانات
  List<product> prodectdata = [];
  for (int i = 0; i <= data.length; i++) {
    prodectdata.add(product.fromJson(data[i]));
  }
  print(prodectdata);
  return prodectdata;
}
else{
  throw Exception('error${response.statusCode.toString()}');
}
  }
}