import 'package:exam_web/view/cart_screen.dart';
import 'package:exam_web/view/home_screen.dart';
import 'package:exam_web/view/product_screen.dart';
import 'package:exam_web/view/select_screen.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Exam',

      initialRoute: '/',
      routes: {
        '/' : (context) => const Homescreen(),
        '/second' : (context) =>  const ProductScreen(),
        '/third' : (context) =>  const SelectedScreen(),
        '/four' : (context) =>  const CartScreen(),
      },
    );
  }
}
