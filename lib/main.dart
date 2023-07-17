import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storapp/bloc/cubit.dart';
import 'package:storapp/splash.dart';


void main() {
  runApp(lay());
}
// shop app
class lay extends StatefulWidget {
  const lay({Key? key}) : super(key: key);

  @override
  State<lay> createState() => _layState();
}

class _layState extends State<lay> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>mycubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          home:splash()
      )
    );
  }
}



