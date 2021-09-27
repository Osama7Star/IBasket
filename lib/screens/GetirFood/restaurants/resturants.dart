import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir_food/cuisine_model.dart';
import 'package:getir_clone/models/getir_food/restaurants_model.dart';
import 'package:getir_clone/screens/GetirFood/resturant_details/resturant_details.dart';
import 'package:getir_clone/screens/custome_widgets/filtersort.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/Getir/widgets/widgets.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/cusines.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/resturants_widget.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/restaurant_horizontal.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({Key? key}) : super(key: key);

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  bool isVertical = true;
  Color iconColors1 = CustomColors.primary;
  Color iconColors2 = CustomColors.black;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: CustomAppBarWithIcons(
            context: context,
            text: 'getirfood',
            widget: BasketCard(value: 200, fromWhichPage: 0)),
        body: ListView(
          children: [
            const AddressBar(),
            SizedBox(
              height: getScreenHeight(),
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
                  SizedBox(height: CustomSizes.verticalSpace*2),

                  titleandshowall(
                      text: "Mudavim restaurants",
                      text2: "Show All (103)",
                      function: () {}),
                  SizedBox(height: CustomSizes.verticalSpace),

                  Card(
                    margin: EdgeInsets.zero,
                    child: SizedBox(
                      height: CustomSizes.height2 ,
                      child: ListView.builder(
                          itemCount: restaurantsList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return RestaurantWidget(
                              restaurant: restaurantsList[index],
                              function: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RestaurantHomePage(
                                          restaurant: restaurantsList[index])),
                                );
                              },
                            );
                          }),
                    ),
                  ),
                  SizedBox(height: CustomSizes.verticalSpace),

                  /// END MÜDAVİM RESTAURANT
                  titleandshowall(
                      text: "Special Offers",
                      text2: "Show All (15)",
                      function: () {}),
                  SizedBox(height: CustomSizes.verticalSpace),

                  Card(
                    margin: EdgeInsets.zero,
                    child: SizedBox(
                      height: CustomSizes.height2 + CustomSizes.height2 * 0.02,
                      child: ListView.builder(
                          itemCount: restaurantsList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return RestaurantWidget(
                              restaurant: restaurantsList[index],
                              function: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RestaurantHomePage(
                                          restaurant: restaurantsList[index])),
                                );
                              },
                            );
                          }),
                    ),
                  ),

                  /// SPECIAL OFFERS
                  SizedBox(height: CustomSizes.verticalSpace),

                  titleandshowall(text: "Cuisines", function: () {}),
                  SizedBox(height: CustomSizes.verticalSpace),

                  Card(
                    margin: EdgeInsets.zero,
                    child: SizedBox(
                      height: CustomSizes.height5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical:CustomSizes.padding5),
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
                  ),

                  /// END CUISINE
                  SizedBox(height: CustomSizes.verticalSpace * 2),

                  /// ALL RESTAURANTS
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: CustomSizes.padding5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          titleandshowall(
                              text: "All Restaurants (780)", function: () {}),
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
                      ? Padding(
                    padding: const EdgeInsets.only(bottom:150),
                        child: Card(
                          margin: EdgeInsets.zero,
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: restaurantsList.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, int index) {
                                return RestaurantWidget(
                                  restaurant: restaurantsList[index],
                                  isFullScreen: true,
                                  function: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RestaurantHomePage(
                                                  restaurant: restaurantsList[
                                                      index])),
                                    );
                                  },
                                );
                              }),
                        ),
                      )
                      : Padding(
                    padding: const EdgeInsets.only(bottom:150),
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: restaurantsList.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (BuildContext context, int index) {
                              return RestaurantHorizontalDesign(
                                  restaurant: restaurantsList[index],
                                function:   (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => RestaurantHomePage(restaurant: restaurantsList[index])),
                                  );
                                },);
                            }),
                      )
                ],
              ),
            ),
          ],
        ));
  }
}
