import 'package:flutter/material.dart';
import 'package:getir_clone/models/cuisine_model.dart';
import 'package:getir_clone/models/restaurants_model.dart';
import 'package:getir_clone/screens/GetirFood/resturant_details/resturant_details.dart';
import 'package:getir_clone/screens/custome_widgets/filtersort.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/Getir/widgets/widgets.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/cusines.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/resturants_widget.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/restaurant_horizontal.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isVertical = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar:CustomAppBarWithIcons(context:context,text:'getirfood',widget:
        BasketCard(value: 200,fromWhichPage: 0)),        body: ListView(
          children: [
            const AddressBar(),

            SizedBox(
              height:getScreenHeight(),
              child: ListView(
                children: [
                  Image.network(
                    'https://cdn.getir.com/misc/611e4a50c270af509cd486b5_banner_en_1629375136600.jpeg',
                  ),
                  const MainCategories(),
                  SizedBox(height: CustomSizes.verticalSpace),
                  /// FILTER AND SORT WIDGET
                  const FilterSort(),

                  /// FILTIER AND SORT WIDGET
                  SizedBox(height: CustomSizes.verticalSpace),

                  titleandshowall(
                      text: "Mudavim restaurants",
                      text2: "Show All (103)",
                      function: () {}),
                  SizedBox(height: CustomSizes.verticalSpace),

                  Card(
                    margin: EdgeInsets.zero,
                    child: SizedBox(
                      height: CustomSizes.height2+CustomSizes.height2*0.02,
                      child: ListView.builder(
                          itemCount: restaurantsList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Restaurants(restaurant: restaurantsList[index],function:
                                (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => RestaurantHomePage(restaurant: restaurantsList[index])),
                              );
                            },
                            );
                          }),
                    ),
                  ),

                  /// MÜDAVİM RESTAURANT
                  titleandshowall(
                      text: "Special Offers",
                      text2: "Show All (15)",
                      function: () {}),
                  Card(
                    margin: EdgeInsets.zero,
                    child: SizedBox(
                      height: CustomSizes.height2+CustomSizes.height2*0.02,
                      child: ListView.builder(
                          itemCount: restaurantsList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Restaurants(restaurant: restaurantsList[index],function:   (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => RestaurantHomePage(restaurant: restaurantsList[index])),
                              );
                            },);
                          }),
                    ),
                  ),

                  /// SPEICAL OFFERS

                  titleandshowall(text: "Cuisines", function: () {}),

                  Card(
                    margin: EdgeInsets.zero,
                    child: SizedBox(
                      height: CustomSizes.height5,
                      child: Center(
                        child: ListView.builder(
                            itemCount: restaurantsList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Cuisines(cuisine: cuisineList[index]);
                            }),
                      ),
                    ),
                  ),

                  /// CUISINE
                  SizedBox(height: CustomSizes.verticalSpace * 2),

                  /// ALL RESTURANTS
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
                                        MaterialPageRoute(builder: (context) => RestaurantHomePage(restaurant: restaurantsList[index])),
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
                                      restaurant: restaurantsList[index]);
                                }),
                          ),
                        )
                ],
              ),
            ),
          ],
        ));
  }
}

