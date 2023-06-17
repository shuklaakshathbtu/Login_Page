import 'package:flutter/material.dart';
import 'package:plant_app/login.dart';
import 'package:plant_app/register.dart';
import 'package:plant_app/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: splashscreen(),
    initialRoute: 'splashscreen()',               //first screen login ki hogi

    routes: {                            //alag alag pages hain
      'splashscreen': (context) => const splashscreen(),

      'login': (context) => const MyLogin(),

      'register': (context) => const MyRegister()
    },
  )
  );

}
