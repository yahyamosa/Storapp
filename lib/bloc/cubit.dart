import 'dart:convert';


import 'package:bloc/bloc.dart';
import 'package:storapp/bloc/state.dart';

import '../models/productModel.dart';
import 'package:http/http.dart' as http;
class mycubit extends Cubit<state>{
  mycubit() : super(init());


  List<product> prodectdata = [];
  List <dynamic> data = [];

  // الفنكشن لا تاخد اشي لانه لا يوجد : في الرابط
  Future<List<product>> getprodect() async {
   emit(loding());

    Uri uri = Uri.parse('https://fakestoreapi.com/products');
    http.Response response = await http.get(uri);
    // البيانات الراجعه على شكل ليست
    print(response.statusCode);
    if(response.statusCode == 200) {
      data = jsonDecode(response.body);
//انشاء ليست فارغه من نوع برودكت لوضع فيها البيانات
      for (int i = 0; i <= data.length; i++) {
        prodectdata.add(product.fromJson(data[i]));
        emit(secsse());
      }
      emit(secsse());
      print("$prodectdata");
      return prodectdata;
    }
    else{
      emit(fail());
      throw Exception('error${response.statusCode.toString()}');

    }
  }


  bool a = true;

void ontap(){
    a  = !a ;
    emit(livesecss());
}


  List<product> numbar = [];
void shownot(product c ){
numbar.add(c);
emit(notsecss());
}




}