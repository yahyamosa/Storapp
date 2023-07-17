import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storapp/bloc/state.dart';
import 'package:storapp/models/productModel.dart';
import 'package:storapp/showdetails.dart';
import 'bloc/cubit.dart';

class myc extends StatefulWidget {
   myc({Key? key ,

   }) : super(key: key);

  @override
  State<myc> createState() => _mycState();

}

class _mycState extends State<myc> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var a = BlocProvider.of<mycubit>(context).getprodect();
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<mycubit ,state>(
        builder:(context , state)
        {

         List<product> listDat = BlocProvider.of<mycubit>(context).prodectdata;
         List lis = BlocProvider.of<mycubit>(context).data;
         var a = BlocProvider.of<mycubit>(context).a;

          return  Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title:Text(' new trend' , style: TextStyle(color: Colors.black),),
              centerTitle: true,
              actions: [
                IconButton(onPressed:(){}, icon:Icon(Icons.shopping_cart, color: Colors.black,))
              ],
            ),
            body: state is loding ? Center(child: CircularProgressIndicator()) :GridView.builder(
                clipBehavior: Clip.none,
                itemCount:listDat.length,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ), itemBuilder:(context , index){
              return  Container(
                margin: EdgeInsets.only(left: 5 , top: 40),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    GestureDetector(
                      onTap:(){
                        product c = product(id:listDat[index].id, title:listDat[index].title, price: listDat[index].price, description:listDat[index].description, image:listDat[index].image, rate:listDat[index].rate);
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>show(pro: c,)));
                         },

                      child: Container(
                        width: 220,
                        height: 130,
                        child: Card(
                          elevation: 8,
                          // color: Colors.grey[300],
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("${listDat[index].id}", style: TextStyle(
                                    fontSize: 18, color: Colors.grey),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Text("${listDat[index].price}",
                                      style: TextStyle(fontSize: 18),),
                                    IconButton(onPressed:(){
                                      BlocProvider.of<mycubit>(context).ontap();
                                     
                                    },
                                        icon: a == true ? Icon(Icons.favorite_border):Icon(
                                          Icons.favorite,
                                          color: Colors.red,))
                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        left: 100,
                        bottom: 90,
                        child: Image.network("${listDat[index].image}" , height: 70,)),
                  ],
                ),
              );

            }),
          );
        }, listener:(context , state){});
  }
}

