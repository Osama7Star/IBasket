import 'package:flutter/material.dart';
import 'package:getir_clone/screens/Getir/home.dart';
import 'package:getir_clone/screens/GetirBitaksi/getir_bitaksi.dart';
import 'package:getir_clone/screens/GetirDrive/GetirDriveMainpage.dart';
import 'package:getir_clone/screens/GetirDrive/otherpage.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/resturants.dart';
import 'package:getir_clone/screens/MainScreen/MainScreen.dart';
import 'package:getir_clone/screens/main_page/main_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'add_note.dart';
import 'firebase_options.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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

        primarySwatch: Colors.green,
      ),
     // home: const HomePage(),
        home: const  HomePage()
    );
  }
}
