import 'package:flutter/material.dart';
import 'package:getir_clone/models/restaurants_model.dart';
import 'package:getir_clone/screens/GetirFood/resturant_details/resturant_details.dart';
import 'package:getir_clone/screens/custome_widgets/filtersort.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/restaurant_horizontal.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/resturants_widget.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class CuisineRestaurant extends StatefulWidget {
  const CuisineRestaurant({Key? key, required this.cuisineName})
      : super(key: key);

  final String cuisineName;

  @override
  State<CuisineRestaurant> createState() => _CuisineRestaurantState();
}

class _CuisineRestaurantState extends State<CuisineRestaurant> {
  @override
  Widget build(BuildContext context) {
    bool isVertical = true;
    return Scaffold(
      appBar:CustomAppBarWithIcons(context:context,text:'getirfood',widget:
      BasketCard(value: 200, fromWhichPage: 1)),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.all(CustomSizes.verticalSpace),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const FilterSort(),
                  IconTextInContainer(text: 'Müdavim',icon: Icons.close_sharp,),
              SizedBox(height: CustomSizes.verticalSpace),

            ]),
          ),
          SizedBox(height: CustomSizes.verticalSpace),

          /// ALL RESTURANTS
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            titleandshowall(text: " Resturants (780)", function: () {}),
            Row(children: [
              IconButton(
                  icon: Icon(
                    Icons.panorama_vertical,
                    color: CustomColors.primary,
                    size: CustomSizes.iconSizeMedium,
                  ),
                  onPressed: () {
                    setState(() {
                      isVertical = !isVertical;
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
                      isVertical = !isVertical;
                    });
                  }),
            ])
          ]),

          isVertical
              ? Card(
                  margin: EdgeInsets.zero,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: restaurantsList.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return RestaurantWidget(
                            restaurant: restaurantsList[index],
                            isFullScreen: true,
                          function:   (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RestaurantHomePage(restaurant: restaurantsList[index])),
                            );
                          },
                        );
                      }),
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
        ]),
      ),
    );
  }
}


