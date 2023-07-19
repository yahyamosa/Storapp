import 'package:flutter/material.dart';
import 'package:flutter_paypal_checkout/flutter_paypal_checkout.dart';
import 'package:storapp/models/productModel.dart';

class show extends StatefulWidget {
   show({required this.pro , super.key });
product pro;
  @override
  State<show> createState() => _showState();
}

class _showState extends State<show> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20 , horizontal: 20),
              child: Container(
                child: IconButton(onPressed:(){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text("${widget.pro.title}" ,overflow:TextOverflow.ellipsis, style:TextStyle(fontSize: 26 , fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              width: 170,
                height: 30,
                child: Text("${widget.pro.description}", overflow:TextOverflow.ellipsis , style:TextStyle( fontWeight: FontWeight.bold,color: Colors.grey),)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text("${widget.pro.price} &" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 2 , right: 2 ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(1),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("${widget.pro.image}")
                  )

                ),
              ),
            ) ,
            SizedBox(height: 70,),
            Container(
              padding: EdgeInsets.only(right: 20),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: CircleAvatar(
                      backgroundColor:Colors.grey[300],
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border),),
                    ),
                    flex: 1,
                  ) ,
                  SizedBox(width: 30,),
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: 200,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical:0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child:MaterialButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => PaypalCheckout(
                            sandboxMode: true,
                            clientId: "AW8pEj_0rR8fBilxBhB4cwS7x6lakja9QibsJCTZ3fZys3xIRIlwMU8lbOOnSB_vCGBdkOrHZNcTCBKK",
                            secretKey: "EM-twvRN18HnFfCz2KYt4UDoO8Zi8ErTg0sdRAm49282nNRXX7xuJkSAMrygXpr8eoUaLRQ3lL-8IDRT",
                            returnURL: "success.snippetcoder.com",
                            cancelURL: "cancel.snippetcoder.com",
                            transactions: const [
                              {
                                "amount": {
                                  "total": '70',
                                  "currency": "USD",
                                  "details": {
                                    "subtotal": '70',
                                    "shipping": '0',
                                    "shipping_discount": 0
                                  }
                                },
                                "description": "The payment transaction description.",
                                // "payment_options": {
                                //   "allowed_payment_method":
                                //       "INSTANT_FUNDING_SOURCE"
                                // },
                                "item_list": {
                                  "items": [
                                    {
                                      "name": "Apple",
                                      "quantity": 4,
                                      "price": '5',
                                      "currency": "USD"
                                    },
                                    {
                                      "name": "Pineapple",
                                      "quantity": 5,
                                      "price": '10',
                                      "currency": "USD"
                                    }
                                  ],

                                  // shipping address is not required though
                                  //   "shipping_address": {
                                  //     "recipient_name": "Raman Singh",
                                  //     "line1": "Delhi",
                                  //     "line2": "",
                                  //     "city": "Delhi",
                                  //     "country_code": "IN",
                                  //     "postal_code": "11001",
                                  //     "phone": "+00000000",
                                  //     "state": "Texas"
                                  //  },
                                }
                              }
                            ],
                            note: "Contact us for any questions on your order.",
                            onSuccess: (Map params) async {
                              print("onSuccess: $params");
                            },
                            onError: (error) {
                              print("onError: $error");
                              Navigator.pop(context);
                            },
                            onCancel: () {
                              print('cancelled:');
                            },
                          ),
                        ));
                      },child: Text("Buy Now" , style: TextStyle(color: Colors.white),),),
                    ),
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}



