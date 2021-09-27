import 'package:flutter/material.dart';
import 'package:getir_clone/screens/Getir/home.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/resturants.dart';
import 'package:getir_clone/screens/GetirLocals/getir_locals.dart';
import 'package:getir_clone/screens/GetirMore/home/home.dart';
import 'package:getir_clone/screens/GetirWater/getir_water.dart';

class GetirsModel {
  int id;

  String name;

  Function(BuildContext context) function;

  GetirsModel(
      {required this.id, required this.name, required this.function(context)});
}

List<GetirsModel> GetirsList = [
  GetirsModel(
      id: 1,
      name: 'getir',
      function: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      }),
  GetirsModel(
      id: 1,
      name: 'getirfood',
      function: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Restaurants()),
        );
      }),
  GetirsModel(
      id: 1,
      name: 'getirmore',
      function: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      }),
  GetirsModel(
      id: 1,
      name: 'getirwater',
      function: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const GetirWater()),
        );
      }),
  GetirsModel(
      id: 1,
      name: 'getirlocals',
      function: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const GetirLocals()),
        );
      })
];
