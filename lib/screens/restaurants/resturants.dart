import 'package:flutter/material.dart';
import 'package:getir_clone/models/cuisine_model.dart';
import 'package:getir_clone/models/restaurants_model.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/home/widgets/widgets.dart';
import 'package:getir_clone/screens/restaurants/widgets/cusines.dart';
import 'package:getir_clone/screens/restaurants/widgets/resturants_widget.dart';
import 'package:getir_clone/screens/restaurants/widgets/restaurant_horizontal.dart';
import 'package:getir_clone/screens/restaurants/widgets/widgets.dart';
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
        appBar: CustomAppBar(context, 'GetirYemek'),
        body: ListView(
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
                  Card(
                    child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: CustomSizes.padding1),
                        padding: EdgeInsets.all(CustomSizes.padding5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: CustomColors.white1,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const ChoicesWidget(
                                text: 'Filtrele',
                                icon: Icons.filter_alt_sharp,
                              ),
                              Container(
                                height: CustomSizes.height5 / 4,
                                width: 1.0,
                                color: CustomColors.black.withOpacity(0.3),
                                margin:
                                    const EdgeInsets.only(left: 10.0, right: 10.0),
                              ),
                              const ChoicesWidget(
                                  text: 'Sırala', icon: Icons.sort_sharp),
                            ])),
                  ),

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
                            return Restaurants(restaurant: restaurantsList[index]);
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
                            return Restaurants(restaurant: restaurantsList[index]);
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
                                        isFullScreen: true);
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
