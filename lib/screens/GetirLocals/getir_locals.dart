import 'package:flutter/material.dart';
import 'package:getir_clone/models/category_model.dart';
import 'package:getir_clone/models/getir_locals/shop_model.dart';
import 'package:getir_clone/models/restaurants_model.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/restaurant_horizontal.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/resturants_widget.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/screens/GetirFood/resturant_details/resturant_details.dart';
import 'package:getir_clone/screens/GetirLocals/shop/shop.dart';
import 'package:getir_clone/screens/GetirLocals/shops/shops.dart';
import 'package:getir_clone/screens/GetirLocals/shops/widget/shop_horizontal_widget.dart';
import 'package:getir_clone/screens/GetirLocals/shops/widget/shop_widget.dart';
import 'package:getir_clone/screens/GetirMore/home/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/filtersort.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/Getir/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';
class GetirLocals extends StatefulWidget {
  const GetirLocals({Key? key}) : super(key: key);

  @override
  State<GetirLocals> createState() => _GetirLocalsState();
}

class _GetirLocalsState extends State<GetirLocals> {

  bool  isVertical = true;
  Color iconColors1 = CustomColors.primary;
  Color iconColors2 = CustomColors.black;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar:CustomAppBar(context:context,text:'getirMore'),
      body:ListView(
        children:[
          const AddressBar(),
          Image.network(
            'https://cdn.getir.com/misc/611e4a50c270af509cd486b5_banner_en_1629375136600.jpeg',
          ),

          const MainCategories(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:CustomSizes.padding5),
            child: FilterSort(),
          ),
          SizedBox(height:CustomSizes.verticalSpace),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:CustomSizes.padding5),
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

          Padding(
            padding:
            EdgeInsets.symmetric(horizontal: CustomSizes.padding5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  titleandshowall(
                      text: "Restaurants (194)", function: () {}),
                  Row(children: [
                    IconButton(
                        icon: Icon(
                          Icons.vertical_split_rounded,
                          color:iconColors1 ,
                          size: CustomSizes.iconSizeMedium,
                        ),
                        onPressed: () {
                          setState(() {
                            isVertical  = true;
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
                            isVertical  = false;
                            iconColors1 = CustomColors.black;
                            iconColors2 = CustomColors.primary;


                          });
                        }),
                  ])
                ]),
          ),

       isVertical?  Card(
           margin: EdgeInsets.zero,
           child: ListView.builder(
             shrinkWrap: true,
               physics: const NeverScrollableScrollPhysics(),
               itemCount: shopModelList.length,
               scrollDirection: Axis.vertical,
               itemBuilder: (BuildContext context, int index) {
                 return ShopWidget(
                     shop: shopModelList[index],
                     isFullScreen: true,
                 function:   (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => ShopPage(shop:shopModelList[index])),
                   );
                 },);
               }),
         ):Card(
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
      )
    );
  }
}

