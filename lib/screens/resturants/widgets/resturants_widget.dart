import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/resturants/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';


class resturants extends StatelessWidget {
  const resturants({
    Key? key, this.isFullScreen = false,
  }) : super(key: key);

  final bool isFullScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Padding(
            padding:  EdgeInsets.all(CustomSizes.padding5),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  width: isFullScreen?getScreenWidth() :getScreenWidth() * 0.8,
                  height: CustomSizes.height4,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://cdn.getiryemek.com/cuisines/1619220348726_480x300.jpeg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red,
                  ),

                  child: Stack(
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(CustomSizes.padding5),
                        child: Container(
                            color: CustomColors.yellow,
                            child: Padding(
                              padding: EdgeInsets.all(CustomSizes.padding8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.ac_unit,
                                    color: CustomColors.primary,
                                    size: CustomSizes.iconSize,
                                  ),
                                  SizedBox(width: CustomSizes.horizontalSpace),
                                  const CustomText(
                                    text: '20 TL discount',
                                    color: CustomColors.primary,
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Positioned(
                        right: CustomSizes.padding5,
                        top: CustomSizes.padding5,
                        child: Icon(Icons.favorite,
                            color: Colors.black, size: CustomSizes.iconSizeMedium),
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
                          ))
                    ],
                  )),
              SizedBox(height: CustomSizes.verticalSpace),
              CustomText(
                  text: 'Çiğ Köfte Ömer Üsta (Şirinevler Mah.)',
                  fontWeight: FontWeight.bold,
                  fontSize: CustomSizes.header4),
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
                  CustomText(
                    text: 'Resturant ',
                    color: CustomColors.green,
                    fontSize: CustomSizes.header5,
                  ),
                  CustomText(
                      text: 'delivery ',
                      color: CustomColors.black.withOpacity(0.6),
                      fontSize: CustomSizes.header5),
                ],
              ),
              SizedBox(height: CustomSizes.verticalSpace),
              Row(
                children: [
                  CustomText(
                    text: '30-40 min ',
                    fontSize: CustomSizes.header5,
                    color: CustomColors.black.withOpacity(0.5),
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
