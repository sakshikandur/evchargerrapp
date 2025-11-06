import 'package:evchargerrapp/homescreen.dart';
import 'package:evchargerrapp/signupscreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute : Homescreen.id,
        routes:{
          Homescreen.id: (context) => Homescreen(),
          Signupscreen.id :(context) =>Signupscreen(),
},
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
