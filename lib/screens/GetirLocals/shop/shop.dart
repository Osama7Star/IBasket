import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir/category_model.dart';
import 'package:getir_clone/models/getir_locals/shop_model.dart';
import 'package:getir_clone/models/getir_more/product_model.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/screens/GetirLocals/shop/widgets/shop_info.dart';
import 'package:getir_clone/screens/GetirLocals/shops/shops.dart';
import 'package:getir_clone/screens/GetirMore/home/widgets/widgets.dart';
import 'package:getir_clone/screens/GetirMore/products/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key,required this.shop}) : super(key: key);

  final ShopModel shop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:CustomAppBar(context:context,text:'getir',text2:'local'),
      body:ListView(
        children:[
          /// SHOP INFORMATION (IMAGE ,NAME , RATING )
          ShopInfo(shop:shop),
          /// END SHOP INFORMATION (IMAGE ,NAME , RATING )

          /// CATEGORIES IN SHOP
          Padding(
            padding:  EdgeInsets.all(CustomSizes.padding5),
            child: GridView.builder(
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
          ),
          ///END  CATEGORIES IN SHOP



          SizedBox(height:CustomSizes.verticalSpace) ,
          Padding(
            padding:  EdgeInsets.all(CustomSizes.padding5),
            child: CustomText(text:'food',fontSize:CustomSizes.header4,color:CustomColors.blackWithOpacity,isCenter:false),
          ),
          /// PRODUCTS
          Card(
            margin: EdgeInsets.zero,
            child: Container(
              padding:
              EdgeInsets.symmetric(horizontal: CustomSizes.padding8 / 1.5,vertical: CustomSizes.padding5),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: productList.length,
                primary: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 3 / 6.5,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(horizontal:CustomSizes.padding8),
                    child: productWidget(product: productList[index]),
                  );
                },
              ),
            ),
          ),
          /// END PRODUCTS


          Padding(
            padding:  EdgeInsets.all(CustomSizes.padding5,),
            child: CustomText(text:'food',fontSize:CustomSizes.header4,color:CustomColors.blackWithOpacity,isCenter:false),
          ),
          Card(
            margin: EdgeInsets.zero,
            child: Container(
              padding:
              EdgeInsets.symmetric(horizontal: CustomSizes.padding8 / 1.5,vertical: CustomSizes.padding5),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: productList.length,
                primary: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 3 / 6.5,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(horizontal:CustomSizes.padding8),
                    child: productWidget(product: productList[index]),
                  );
                },
              ),
            ),
          ),

        ]
      )
    );
  }
}
