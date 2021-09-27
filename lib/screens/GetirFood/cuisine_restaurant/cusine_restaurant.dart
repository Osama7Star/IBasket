import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir_food/restaurants_model.dart';
import 'package:getir_clone/screens/GetirFood/resturant_details/resturant_details.dart';
import 'package:getir_clone/screens/custome_widgets/filtersort.dart';
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
  bool  isVertical = true;
  Color iconColors1 = CustomColors.primary;
  Color iconColors2 = CustomColors.black;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBarWithIcons(
          context: context,
          text: 'getirfood',
          widget: const BasketCard(value: 200, fromWhichPage: 1)),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.all(CustomSizes.padding5),
            child:
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start, children: [
              const FilterSort(),
              SizedBox(height: CustomSizes.verticalSpace * 2),
              const IconTextInContainer(
                text: 'Müdavim',
                icon: Icons.close_sharp,
              ),
            ]),
          ),
          SizedBox(height: CustomSizes.verticalSpace),

          /// ALL RESTAURANTS
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

          isVertical
              ? Card(
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
                                  builder: (context) => RestaurantHomePage(
                                      restaurant: restaurantsList[index])),
                            );
                          },
                        );
                      }),
                )
              : Card(
                  margin: EdgeInsets.zero,
                  child: SizedBox(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
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
                            },
                          );
                        }),
                  ),
                )
        ]),
      ),
    );
  }
}
