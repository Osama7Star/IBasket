import 'package:flutter/material.dart';
import 'package:getir_clone/models/restaurants_model.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/GetirFood/resturant_details/widgets/widgets.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({
    Key? key,
    this.isFullScreen = false,
    required this.restaurant,
    required this.function,
  }) : super(key: key);

  final bool isFullScreen;
  final RestaurantsModel restaurant;
  final Function() function;

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: widget.function,
          child: Padding(
            padding: EdgeInsets.all(CustomSizes.padding5),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  width: widget.isFullScreen
                      ? getScreenWidth()
                      : getScreenWidth() * 0.8,
                  height: CustomSizes.height5*1.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.restaurant.image),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          DiscountBannerWidget(
                              text: "20 TL discount", icon: Icons.check),
                          isFavorite
                              ? IconButton(
                            icon: Icon(Icons.favorite),
                            color: CustomColors.primary,
                            iconSize: CustomSizes.iconSizeMedium,
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                          )
                              : IconButton(
                            icon: Icon(Icons.favorite),
                            color: CustomColors.black,
                            iconSize: CustomSizes.iconSizeMedium,
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                          ),
                        ]
                      ),
                      Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: CustomColors.white,
                            ),
                            padding: EdgeInsets.all(CustomSizes.padding6 / 2),
                            child: Row(children: [
                              Icon(
                                Icons.star,
                                color: CustomColors.primary,
                                size: CustomSizes.iconSize / 1.3,
                              ),
                              CustomText(
                                  text: widget.restaurant.rating.toString(),
                                  color: CustomColors.primary,
                                  fontSize: CustomSizes.header5,
                                  fontWeight: FontWeight.bold),
                              CustomText(
                                  text: ' (200+)',
                                  color: CustomColors.blackWithOpacity,
                                  fontSize: CustomSizes.header6),
                            ]),
                          ))
                    ],
                  )),
              /// RESTAURNT INFO (NAME , DELIVER OPTION , DELIVERY TIME , MINIMUM)
              SizedBox(height: CustomSizes.verticalSpace),
              CustomText(
                  text: widget.restaurant.name,
                  fontWeight: FontWeight.bold,
                  fontSize: CustomSizes.header4),
              SizedBox(height: CustomSizes.verticalSpace),
              SizedBox(
                width: widget.isFullScreen
                    ? getScreenWidth()
                    : getScreenWidth() * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    /// IF RESTAURANT DO DELIVER
                    widget.restaurant.restaurantDelivery
                        ? Row(
                            children: [
                              const DeliverTypeCircle(
                                  widget: Center(
                                    child: CustomText(
                                      text: 'R',
                                      color: CustomColors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  color: CustomColors.green,
                                  borderColor: CustomColors.green),
                              SizedBox(width: CustomSizes.horizontalSpace / 2),
                              CustomText(
                                text: 'Resturant ',
                                color: CustomColors.green,
                                fontSize: CustomSizes.header5,
                              ),
                              CustomText(
                                  text: 'delivery ',
                                  color: CustomColors.black.withOpacity(0.6),
                                  fontSize: CustomSizes.header5),
                              Container(width: getScreenWidth() * 0.05),
                            ],
                          )
                        : Container(width: 0),
                    /// IF GETIR  DO DELIVER

                    widget.restaurant.getirDelivery
                        ? Row(
                            children: [
                              DeliverTypeCircle(
                                widget: Center(
                                    child: Icon(Icons.shopping_bag,
                                        color: CustomColors.yellow,
                                        size: CustomSizes.iconSize / 1.8)),
                                color: CustomColors.primary,
                                borderColor: CustomColors.primary,
                              ),
                              SizedBox(width: CustomSizes.horizontalSpace / 2),
                              CustomText(
                                text: 'getir',
                                color: CustomColors.primary,
                                fontSize: CustomSizes.header5,
                              ),
                              CustomText(
                                  text: 'delivery ',
                                  color: CustomColors.black.withOpacity(0.6),
                                  fontSize: CustomSizes.header5),
                            ],
                          )
                        : Container(width: 0),
                  ],
                ),
              ),
              SizedBox(height: CustomSizes.verticalSpace),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                    text: widget.restaurant.deliveryTime,
                    fontSize: CustomSizes.header5,
                    color: CustomColors.black.withOpacity(0.5),
                  ),
                  CustomText(
                    text: ' * ',
                    color: CustomColors.black.withOpacity(0.5),
                    fontSize: CustomSizes.header5,
                  ),
                  CustomText(
                    text: 'min. ₺ ${widget.restaurant.minimum.toString()}',
                    color: CustomColors.black.withOpacity(0.5),
                    fontSize: CustomSizes.header5,
                  ),
                ],
              )
            ]),
          ),
        ),
      ],
    );
  }
}
