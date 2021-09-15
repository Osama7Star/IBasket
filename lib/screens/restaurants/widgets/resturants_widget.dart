import 'package:flutter/material.dart';
import 'package:getir_clone/models/restaurants_model.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/resturant_details/resturant_details.dart';
import 'package:getir_clone/screens/resturant_details/widgets/widgets.dart';

import 'package:getir_clone/screens/restaurants/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';


class Restaurants extends StatefulWidget {
  const Restaurants({
    Key? key, this.isFullScreen = false,required this.restaurant,
  }) : super(key: key);

  final bool isFullScreen;
  final RestaurantsModel restaurant;


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
          onTap:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RestaurantHomePage(restaurant:widget.restaurant)),
            );
    },
          child: Padding(
            padding:  EdgeInsets.all(CustomSizes.padding5),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  width: widget.isFullScreen?getScreenWidth() :getScreenWidth() * 0.8,
                  height: CustomSizes.height4,
                  decoration: BoxDecoration(
                    image:  DecorationImage(
                        image: NetworkImage(
                            widget.restaurant.image),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red,
                  ),

                  child: Stack(
                    children: [
                      const DiscountBannerWidget(text:"20 TL discount",icon:Icons.check),
                      Positioned(
                        right: CustomSizes.padding5,
                        top: CustomSizes.padding5,
                        child:isFavorite? IconButton(icon:Icon(Icons.favorite),
                            color: CustomColors.primary, iconSize: CustomSizes.iconSizeMedium, onPressed: () {
                          setState((){
                            isFavorite = !isFavorite;
                          });
                          },):
                        IconButton(icon:Icon(Icons.favorite),
                          color: CustomColors.black, iconSize: CustomSizes.iconSizeMedium, onPressed: () {
                            setState((){
                              isFavorite = !isFavorite;
                            });
                          },)
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
                                size: CustomSizes.iconSize/1.3,
                              ),
                              CustomText(
                                  text:widget.restaurant.rating.toString(),
                                  color: CustomColors.primary,
                                  fontSize: CustomSizes.header5,
                                  fontWeight: FontWeight.bold),
                              CustomText(
                                  text: '(200+)',
                                  color: CustomColors.black.withOpacity(0.8),
                                  fontSize: CustomSizes.header6),
                            ]),
                          ))
                    ],
                  )),
              SizedBox(height: CustomSizes.verticalSpace),
              CustomText(
                  text: widget.restaurant.name,
                  fontWeight: FontWeight.bold,
                  fontSize: CustomSizes.header4),
              SizedBox(height: CustomSizes.verticalSpace),
              Container(
                width: widget.isFullScreen?getScreenWidth() :getScreenWidth() * 0.8,
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: [
                    widget.restaurant.restaurantDelivery?  Row(
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
                        ),

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
                        Container(width:getScreenWidth()*0.05),

                      ],
                    ):Container(width:0),

                    widget.restaurant.getirDelivery? Row(
                      children: [
                         DeliverTypeCircle(
                          widget: Center(
                            child:Icon(Icons.shopping_bag,color:CustomColors.yellow,size:CustomSizes.iconSize/1.5)
                          ),
                          color: CustomColors.primary,
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
                    ):Container(width:0),
                  ],
                ),
              ),
              SizedBox(height: CustomSizes.verticalSpace),
              Row(
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
                      text:'min. ₺ ${widget.restaurant.minimum.toString()}',
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


