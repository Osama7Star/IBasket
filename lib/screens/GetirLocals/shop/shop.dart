import 'package:flutter/material.dart';
import 'package:getir_clone/models/category_model.dart';
import 'package:getir_clone/models/getir_locals/shop_model.dart';
import 'package:getir_clone/screens/GetirLocals/shop/widgets/shop_info.dart';
import 'package:getir_clone/screens/GetirLocals/shops/shops.dart';
import 'package:getir_clone/screens/GetirMore/home/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key,required this.shop}) : super(key: key);

  final ShopModel shop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(context:context,text:'getrirlocals'),
      body:ListView(
        children:[
          ShopInfo(shop:shop),
          GridView.builder(
            shrinkWrap: true,
            itemCount: categoryList.length,
            primary: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: (8 /3),
            ),
            itemBuilder: (context, index) {
              return  Category(category: categoryList[index],imageInLeft: true,function:
                  () {
                print('test');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Shops()),
                );
              }
              );
            },
          ),
        ]
      )
    );
  }
}
