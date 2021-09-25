import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir_locals/shop_model.dart';
import 'package:getir_clone/models/restaurants_model.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class ShopHorizontal extends StatelessWidget {
  const ShopHorizontal({Key? key,required this.shop,required this.function}) : super(key: key);

  final Function() function ;
  final ShopModel shop;  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:function,
      child: Card(
        margin:EdgeInsets.zero,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:CustomSizes.padding5,vertical:CustomSizes.padding5/2),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                                  shop.image),
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
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical:CustomSizes.padding8),
                        child: CustomText(text: shop.name,isCenter:false,maxLines: 1,fontSize: CustomSizes.header5,color: CustomColors.black),
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

