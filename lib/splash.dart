import 'dart:async';

import 'package:flutter/material.dart';
import 'package:storapp/castomcard.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=> Navigator.push(context,MaterialPageRoute(builder:(context )=>myc())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("imag/splashimag.png"),
                  )

              ),
            ),
            Positioned(
                top: 200,
                left: 180,
                child: Text('JUST DO IT ' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30),)) ,

            Positioned(
              top: 560,
              child: Container(
                width: 220,
                height: 12,
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(8)
                ),
              ),
            )

          ],
        )
    );;
  }
}
