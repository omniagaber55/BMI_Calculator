
import 'BMI_cala.dart';
import 'package:bmi/BMI_Result.dart';
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
      debugShowCheckedModeBanner:false,
        initialRoute:"/",
      routes:{
         "/": (context) =>  BMIC(),
      // "/desert": (context) => const Desert(),
         
      },
     
    );
  }
}
