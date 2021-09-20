import 'package:flutter/material.dart';
import 'package:getir_clone/screens/Getir/home.dart';
import 'package:getir_clone/screens/GetirLocals/getir_locals.dart';
import 'package:getir_clone/screens/other_pages/profile/user_profile/user_profile.dart';
import 'package:getir_clone/utilities/colors.dart';

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
        scaffoldBackgroundColor: Color.fromRGBO(245,240,240, 1),

        primarySwatch: Colors.deepPurple,
      ),
      home: const HomePage(),

    );
  }
}
