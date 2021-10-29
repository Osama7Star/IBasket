import 'package:flutter/material.dart';
import 'package:getir_clone/screens/Getir/home.dart';
import 'package:getir_clone/screens/GetirLocals/getir_locals.dart';
import 'package:getir_clone/screens/authentication/login/login.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/checkout/checkout.dart';
import 'package:getir_clone/screens/other_pages/profile/payment/payment.dart';
import 'package:getir_clone/screens/other_pages/profile/user_profile/order_details.dart';
import 'package:getir_clone/screens/other_pages/profile/user_profile/previous_order.dart';
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
     // home: const HomePage(),
        home: const  Login()
    );
  }
}
