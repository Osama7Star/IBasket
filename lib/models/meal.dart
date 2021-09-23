import 'package:flutter/material.dart';

class MealModel {
  int id;

  String name;

  double price;

  double oldPrice;
  String smallDetails;
  String details;
  String imageUrl;

  MealModel(
      {required this.id,
        required this.name,
        required this.price,
        required this.oldPrice,
        required this.smallDetails,
        required this.details,
        required this.imageUrl});
}

List<MealModel> mealList = [

  MealModel(
      id: 1,
      name: 'Fabrikita Dulce De Leche Milk Caramel',
      smallDetails: '',
      price: 15.9,
      oldPrice: 1,
      details: 'good offer',
      imageUrl:
      'https://cdn.getir.com/product/611216f1848c8b67d7e7d32c_tr_1628752985427.jpeg'), MealModel(
      id: 1,
      name: 'Fabrikita Dulce De Leche Milk Caramel',
      smallDetails: '',
      price: 15.9,
      oldPrice: 1,
      details: 'good offer',
      imageUrl:
      'https://cdn.getir.com/product/611216f1848c8b67d7e7d32c_tr_1628752985427.jpeg'), MealModel(
      id: 1,
      name: 'Fabrikita Dulce De Leche Milk Caramel',
      smallDetails: '',
      price: 15.9,
      oldPrice: 1,
      details: 'good offer',
      imageUrl:
      'https://cdn.getir.com/product/611216f1848c8b67d7e7d32c_tr_1628752985427.jpeg'), MealModel(
      id: 1,
      name: 'Fabrikita Dulce De Leche Milk Caramel',
      smallDetails: '',
      price: 15.9,
      oldPrice: 1,
      details: 'good offer',
      imageUrl:
      'https://cdn.getir.com/product/611216f1848c8b67d7e7d32c_tr_1628752985427.jpeg'), MealModel(
      id: 1,
      name: 'Fabrikita Dulce De Leche Milk Caramel',
      smallDetails: '',
      price: 15.9,
      oldPrice: 1,
      details: 'good offer',
      imageUrl:
      'https://cdn.getir.com/product/611216f1848c8b67d7e7d32c_tr_1628752985427.jpeg'), MealModel(
      id: 1,
      name: 'Fabrikita Dulce De Leche Milk Caramel',
      smallDetails: '',
      price: 15.9,
      oldPrice: 1,
      details: 'good offer',
      imageUrl:
      'https://cdn.getir.com/product/611216f1848c8b67d7e7d32c_tr_1628752985427.jpeg'),
];
