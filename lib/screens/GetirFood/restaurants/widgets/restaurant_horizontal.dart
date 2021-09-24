import 'package:flutter/material.dart';
import 'package:getir_clone/models/restaurants_model.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class RestaurantHorizontalDesign extends StatelessWidget {
   const RestaurantHorizontalDesign({Key? key,required this.restaurant,required this.function}) : super(key: key);

    final Function() function ;
   final RestaurantsModel restaurant;  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap:function,
      child: Card(
        margin:EdgeInsets.zero,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:CustomSizes.padding5,vertical:CustomSizes.padding5/2),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.start,
            children: [
              /// RESTAURANT PAGE
              Padding(
                padding:  EdgeInsets.symmetric(vertical:CustomSizes.padding8),
                child: SizedBox(
                    width: getScreenWidth() * 0.2,
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: CustomSizes.height5,
                          decoration:  BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  restaurant.image),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              width: getScreenWidth() * 0.2,
                              color: CustomColors.primary,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    text: "20 Tl",
                                    color: CustomColors.white,
                                    fontSize: CustomSizes.header6,
                                  ),
                                  Icon(Icons.arrow_drop_down_sharp,size:CustomSizes.iconSize,color:CustomColors.white)
                                ],
                              ),
                            )),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Icon(
                            Icons.camera_alt,
                            color: CustomColors.primary,
                            size: CustomSizes.iconSize,
                          ),
                        ),
                      ],
                    )
                    //
                    ),
              ),
              ///END RESTAURANT PAGE

              SizedBox(width: CustomSizes.horizontalSpace),
              /// RESTAURANT INFORMATION
              SizedBox(
                width: getScreenWidth() * 0.5,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       CustomText(text: restaurant.name,isCenter:false,maxLines: 1,fontSize: CustomSizes.header5,color: CustomColors.black),
                      SizedBox(height: CustomSizes.verticalSpace),
                      Row(
                        children: [
                          DeliverTypeCircle(
                            widget: Center(
                              child: Icon(
                                Icons.shopping_bag,
                                color: CustomColors.yellow,
                                size: CustomSizes.iconSize / 1.8,
                              ),
                            ),
                            color: CustomColors.primary,
                          ),
                          SizedBox(width: CustomSizes.horizontalSpace / 2),
                          Row(
                            children: [
                              CustomText(
                                text: '30-40 min ',
                                fontSize: CustomSizes.header6,
                                color: CustomColors.black.withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: ' * ',
                                color: CustomColors.black.withOpacity(0.5),
                                fontSize: CustomSizes.header6,
                              ),
                              CustomText(
                                text:'Min. ₺ ${restaurant.minimum.toString()}',
                                color: CustomColors.black.withOpacity(0.5),
                                fontSize: CustomSizes.header6,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: CustomSizes.verticalSpace),
                      Row(
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
                          Row(
                            children: [
                              CustomText(
                                text: '30-40 min ',
                                fontSize: CustomSizes.header6,
                                color: CustomColors.black.withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: ' * ',
                                color: CustomColors.black.withOpacity(0.5),
                                fontSize: CustomSizes.header6,
                              ),
                              CustomText(
                                text: ' Min. ₺ 15.00 ',
                                color: CustomColors.black.withOpacity(0.5),
                                fontSize: CustomSizes.header6,
                                fontWeight: FontWeight.bold,
                              ),

                            ],
                          )
                        ],
                      ),
                    ]),
              ),
              /// END RESTAURANT INFORMATION

              Expanded(
                child: SizedBox(
                    width: getScreenWidth() * 0.3,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(
                            child: Container(

                              padding:  EdgeInsets.symmetric(vertical:CustomSizes.padding7,horizontal:CustomSizes.padding8),

                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(7),
                                color: CustomColors.white,
                              ),
                              child: const RestaurantsReviewWidget(
                                review: 3.4,
                                restaurantsNumber: 200,
                                icon:Icons.star
                              ),
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: CustomColors.primary,
                            size: CustomSizes.iconSizeMedium,
                          ),
                        ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

