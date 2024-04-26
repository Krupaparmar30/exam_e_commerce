import 'package:exam_e_commerce/componet/screen/cartscreen.dart';
import 'package:exam_e_commerce/componet/screen/detailsscreen.dart';
import 'package:exam_e_commerce/componet/screen/homescreen.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(krupaApp());
}
class krupaApp extends StatelessWidget {
  const krupaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => homePage(),
        '/details':(context) => detalisPage(),
        '/cart':(context) => cartPage(),
      },
    );
  }
}

