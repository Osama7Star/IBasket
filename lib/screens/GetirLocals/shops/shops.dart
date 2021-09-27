import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir_locals/shop_model.dart';
import 'package:getir_clone/models/getir_food/restaurants_model.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/restaurant_horizontal.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/resturants_widget.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/screens/GetirFood/resturant_details/resturant_details.dart';
import 'package:getir_clone/screens/GetirLocals/shop/shop.dart';
import 'package:getir_clone/screens/GetirLocals/shops/widget/shop_horizontal_widget.dart';
import 'package:getir_clone/screens/GetirLocals/shops/widget/shop_widget.dart';
import 'package:getir_clone/screens/custome_widgets/filtersort.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Shops extends StatefulWidget {
  const Shops({Key? key}) : super(key: key);

  @override
  State<Shops> createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
   bool isVertical = true;
  Color iconColors1 = CustomColors.primary;
  Color iconColors2 = CustomColors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:CustomAppBar(context:context,text:'getir',text2:'local'),
      body:SingleChildScrollView(
        child: Column(
          children:[
            FilterSort(),
            Padding(
              padding:  EdgeInsets.all(CustomSizes.padding5),
              child: Align(

                  alignment: FractionalOffset.topLeft,
                  child: const IconTextInContainer(text: 'Müdavim',icon: Icons.close_sharp)),
            ),

            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: CustomSizes.padding5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    titleandshowall(
                        text: "Shops (54)", function: () {}),
                    Row(children: [
                      IconButton(
                          icon: Icon(
                            Icons.vertical_split_rounded,
                            color:iconColors1 ,
                            size: CustomSizes.iconSizeMedium,
                          ),
                          onPressed: () {
                            setState(() {
                              isVertical = true;
                              iconColors1 = CustomColors.primary;
                              iconColors2 = CustomColors.black;
                            });
                          }),
                      SizedBox(width: CustomSizes.horizontalSpace),
                      IconButton(
                          icon: Icon(
                            Icons.horizontal_split_outlined,
                            color: iconColors2,
                            size: CustomSizes.iconSizeMedium,
                          ),
                          onPressed: () {
                            setState(() {
                              isVertical = false;
                              iconColors1 = CustomColors.black;
                              iconColors2 = CustomColors.primary;


                            });
                          }),
                    ])
                  ]),
            ),
            isVertical
                ? SingleChildScrollView(
              child: Card(
                margin: EdgeInsets.zero,
                child:  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: shopModelList.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          ShopWidget(
                            shop: shopModelList[index],
                            isFullScreen: true,
                            function:   (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ShopPage(shop:shopModelList[index])),
                              );
                            },),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal:CustomSizes.padding5),
                            child: Divider(),
                          ),
                        ],
                      );
                    }),
              ),
            )
                : Card(
              margin: EdgeInsets.zero,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: shopModelList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return ShopHorizontal(
                      shop: shopModelList[index],
                      function:   (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ShopPage(shop:shopModelList[index])),
                        );
                      },);
                  }),
            )
          ]
        ),
      )
    );
  }
}
