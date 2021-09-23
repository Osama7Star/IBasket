import 'package:flutter/material.dart';
import 'package:getir_clone/models/restaurants_model.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/restaurant_horizontal.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/resturants_widget.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/screens/GetirFood/resturant_details/resturant_details.dart';
import 'package:getir_clone/screens/GetirLocals/shop/shop.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(context:context,text:'test'),
      body:ListView(
        children:[
          FilterSort(),
          IconTextInContainer(text: 'Müdavim',icon: Icons.close_sharp),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: CustomSizes.padding5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  titleandshowall(
                      text: "All Resturants (780)", function: () {}),
                  Row(children: [
                    IconButton(
                        icon: Icon(
                          Icons.panorama_vertical,
                          color: CustomColors.primary,
                          size: CustomSizes.iconSizeMedium,
                        ),
                        onPressed: () {
                          setState(() {
                            isVertical = true;
                          });
                        }),
                    SizedBox(width: CustomSizes.horizontalSpace),
                    IconButton(
                        icon: Icon(
                          Icons.panorama_horizontal,
                          color: CustomColors.primary,
                          size: CustomSizes.iconSizeMedium,
                        ),
                        onPressed: () {
                          setState(() {
                            isVertical = false;
                          });
                        }),
                  ])
                ]),
          ),
          isVertical
              ? SingleChildScrollView(
            child: Card(
              margin: EdgeInsets.zero,
              child: SizedBox(
                height: getScreenHeight(),
                child: ListView.builder(
                    itemCount: restaurantsList.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Restaurants(
                          restaurant: restaurantsList[index],
                          isFullScreen: true,
                      function:   (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Shop()),
                        );
                      },);
                    }),
              ),
            ),
          )
              : Card(
            margin: EdgeInsets.zero,
            child: SizedBox(
              child: ListView.builder(
                  primary: false,
                  itemCount: restaurantsList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return RestaurantHorizontalDesign(
                        restaurant: restaurantsList[index],
                      function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RestaurantHomePage(
                                  restaurant: restaurantsList[index])),
                        );
                      },);
                  }),
            ),
          )
        ]
      )
    );
  }
}
