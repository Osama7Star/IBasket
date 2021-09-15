import 'package:flutter/material.dart';
import 'package:getir_clone/screens/authentication/login/login.dart';


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
      home: const Login(),
    );
  }
}
