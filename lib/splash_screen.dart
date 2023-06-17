import 'dart:async';

import 'package:flutter/material.dart';
import 'package:plant_app/login.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration( seconds: 5) , (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyLogin(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text('hi' , style: TextStyle(
            fontSize: 34,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600
          ),),
        ),
      ),
    );
  }
}
