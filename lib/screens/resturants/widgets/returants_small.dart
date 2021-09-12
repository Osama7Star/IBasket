import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/resturants/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class ResturantsSmall extends StatelessWidget {
  const ResturantsSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            children: [
              Container(
                width:getScreenWidth()*0.2,

                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: CustomSizes.height5,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://cdn.getiryemek.com/cuisines/1619220143647_480x300.jpeg"),
                          ),
                        ),
                      ),
                      Positioned(
                        top:0,
                        left:0,
                        child: Container(
                          width:getScreenWidth()*0.2,

                          padding: EdgeInsets.all(CustomSizes.padding8),
                          color:CustomColors.primary,
                          child:CustomText(text:"20 Tl",color:CustomColors.white,fontSize: CustomSizes.header5,),
                        )
                      ),
                      Positioned(
                        bottom:0,
                        left:0,
                        child:
                            Icon(
                              Icons.flip_camera_ios_rounded,
                              color: CustomColors.primary,
                              size: CustomSizes.iconSizeMedium,
                            ),


                      ),
                    ],
                  )
                  //
                  ),
              SizedBox(width: CustomSizes.horizontalSpace),
              Container(
                width:getScreenWidth()*0.5,

                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(text: "Gazi Çiğ Köfte Şirinevler "),
                      SizedBox(height: CustomSizes.verticalSpace),
                      Row(
                        children: [
                          DeliverTypeCircle(
                            widget: Center(
                              child: Icon(
                                Icons.shopping_bag,
                                color: CustomColors.yellow,
                                size: CustomSizes.iconSize / 1.5,
                              ),
                            ),
                            color: CustomColors.primary,
                          ),
                          SizedBox(width: CustomSizes.horizontalSpace / 2),
                          Row(
                            children: [
                              CustomText(
                                text: '30-40 min ',
                                fontSize: CustomSizes.header5,
                                color: CustomColors.black.withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: ' * ',
                                color: CustomColors.black.withOpacity(0.5),
                                fontSize: CustomSizes.header5,
                              ),
                              CustomText(
                                text: ' Min. t 15.00 ',
                                color: CustomColors.black.withOpacity(0.5),
                                fontSize: CustomSizes.header5,
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
                                fontSize: CustomSizes.header5,
                                color: CustomColors.black.withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: ' * ',
                                color: CustomColors.black.withOpacity(0.5),
                                fontSize: CustomSizes.header5,
                              ),
                              CustomText(
                                text: ' Min. t 15.00 ',
                                color: CustomColors.black.withOpacity(0.5),
                                fontSize: CustomSizes.header5,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(width:CustomSizes.horizontalSpace/2),
                              Container(
                                padding: EdgeInsets.all( 2),

        color:CustomColors.primary,
                                child:const CustomText(
                                  text:'25%',
                                  color:CustomColors.white
                                )
                              )
                            ],
                          )
                        ],
                      ),
                    ]),
              ),
              Expanded(
                child: Container(
                    width:getScreenWidth()*0.3,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                      Card(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: CustomColors.white,
                          ),
                          child: Row(children: [
                            Icon(
                              Icons.star,
                              color: CustomColors.primary,
                              size: CustomSizes.iconSize,
                            ),
                            CustomText(
                                text: '4.6 ',
                                color: CustomColors.primary,
                                fontSize: CustomSizes.header5,
                                fontWeight: FontWeight.bold),
                            CustomText(
                                text: '(200+)',
                                color: CustomColors.black.withOpacity(0.8),
                                fontSize: CustomSizes.header6),
                          ]),
                        ),
                      ),
                      Icon(
                        Icons.favorite,
                        color: CustomColors.primary,
                        size: CustomSizes.iconSizeBig,
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
