// import 'package:flutter/material.dart';
// import 'package:storapp/castomcard.dart';
// import 'package:storapp/models/productModel.dart';
// import 'package:storapp/servies/getcatogore.dart';
// import 'package:storapp/servies/productservies.dart';
//
// class home_page extends StatefulWidget {
//    home_page({Key? key}) : super(key: key);
//
//   @override
//   State<home_page> createState() => _home_pageState();
// }
//
// class _home_pageState extends State<home_page> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title:Text(' new trend' , style: TextStyle(color: Colors.black),),
//         centerTitle: true,
//         actions: [
//           IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart, color: Colors.black,))
//         ],
//       ),
//     body: GridView.builder(
//       clipBehavior: Clip.none,
//       itemCount: 40,
//         gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 2,
//
//     ), itemBuilder:(context , index){
//       return myc(indext: index,);
//     }),
//     );
//
//   }
// }

