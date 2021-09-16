import 'package:flutter/material.dart';
import 'package:getir_clone/models/restaurants_model.dart';
import 'package:getir_clone/screens/custome_widgets/filtersort.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/restaurants/widgets/restaurant_horizontal.dart';
import 'package:getir_clone/screens/restaurants/widgets/resturants_widget.dart';
import 'package:getir_clone/screens/restaurants/widgets/widgets.dart';
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
      appBar: CustomAppBar(context, 'getirFood'),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.all(CustomSizes.verticalSpace),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const FilterSort(),
              SizedBox(height: CustomSizes.verticalSpace),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  color: CustomColors.primary.withOpacity(0.15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText(
                      text: widget.cuisineName,
                      color: CustomColors.primary,
                      fontSize: CustomSizes.header5,
                    ),
                    Icon(Icons.close_sharp,
                        size: CustomSizes.iconSize / 1.3,
                        color: CustomColors.primary),
                  ],
                ),
              ),
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
        ]),
      ),
    );
  }
}
