import 'package:flutter/material.dart';
import 'package:getir_clone/screens/home_page/home_page.dart';
import 'package:getir_clone/screens/resturants/main_page.dart';
import 'package:getir_clone/utilities/sizes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Getir Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
      ),
      home: const HomePage(),
    );
  }
}
