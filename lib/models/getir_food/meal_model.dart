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
      name: 'Ceviz Lahmacun',
      smallDetails: '',
      price: 12,
      oldPrice: 0,
      details: 'Garinitürsüz',
      imageUrl:
          'https://cdn.getiryemek.com/products/1622818227051_500x375.jpeg'),
  MealModel(
      id: 1,
      name: 'Urfa Kebap (Acısız)',
      smallDetails: '',
      price: 15.9,
      oldPrice: 0,
      details: '',
      imageUrl:
          'https://cdn.getiryemek.com/products/1622013003462_500x375.jpeg'),
  MealModel(
      id: 1,
      name: 'Lahmacun Salatası (Büyük)',
      smallDetails: '',
      price: 15.9,
      oldPrice: 20,
      details:
          'Roka, maydanoz, domates, soğan, limon (10 lahmacuna kadar 1 adet sipariş edilir.)',
      imageUrl:
          'https://cdn.getiryemek.com/products/1622013585661_500x375.jpeg'),
  MealModel(
      id: 1,
      name: 'Bulgur Pilavı',
      smallDetails: '',
      price: 15.9,
      oldPrice: 20,
      details: '',
      imageUrl:
          'https://cdn.getiryemek.com/products/1622013128323_500x375.jpeg'),
  MealModel(
      id: 1,
      name: 'Yoğurtlu Kebap',
      smallDetails: '',
      price: 30,
      oldPrice: 0,
      details: 'good offer',
      imageUrl:
          'https://cdn.getiryemek.com/products/1622013798897_500x375.jpeg'),
  MealModel(
      id: 1,
      name: 'Ali Nazik Kebap',
      smallDetails: '',
      price: 50,
      oldPrice: 1,
      details: 'good offer',
      imageUrl:
          'https://cdn.getiryemek.com/products/1622013054287_500x375.jpeg'),
  MealModel(
      id: 1,
      name: 'Ceviz Lahmacun',
      smallDetails: '',
      price: 12,
      oldPrice: 0,
      details: 'Garinitürsüz',
      imageUrl:
      'https://cdn.getiryemek.com/products/1622818227051_500x375.jpeg'),
  MealModel(
      id: 1,
      name: 'Ceviz Lahmacun',
      smallDetails: '',
      price: 12,
      oldPrice: 0,
      details: 'Garinitürsüz',
      imageUrl:
      'https://cdn.getiryemek.com/products/1622818227051_500x375.jpeg'),
  MealModel(
      id: 1,
      name: 'Ceviz Lahmacun',
      smallDetails: '',
      price: 12,
      oldPrice: 0,
      details: 'Garinitürsüz',
      imageUrl:
      'https://cdn.getiryemek.com/products/1622818227051_500x375.jpeg'),
];
