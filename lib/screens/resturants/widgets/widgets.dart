import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class DeliverTypeCircle extends StatelessWidget {
  const DeliverTypeCircle({
    required this.widget,
    required this.color,
    Key? key,
  }) : super(key: key);

  final Widget widget;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: CustomSizes.iconSize,
      height: CustomSizes.iconSize,
      // child: Icon(Icons.error, size: CustomSizes.iconSize,),
      child:widget,
      decoration:  BoxDecoration(
          shape: BoxShape.circle,
          color: color),
    );
  }
}

class titleandshowall extends StatelessWidget {
  const titleandshowall({
    Key? key,required this.text,required this.function, this.text2='',
  }) : super(key: key);

  final String text;
  final String text2;
  final Function function ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text:text,color: CustomColors.black.withOpacity(0.7),),
          CustomText(text:text2,color: CustomColors.primary,),

        ],
      ),
    );
  }
}

class ChoicesWidget extends StatelessWidget {
  const ChoicesWidget({Key? key,required this.text,required this.icon}) : super(key: key);

  final String text ;
  final IconData icon ;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(children: [
            Icon(
              icon,
              color: CustomColors.primary,
              size: CustomSizes.iconSizeMedium,
            ),
            SizedBox(width:CustomSizes.verticalSpace),
            CustomText(text:text)
          ]),


        ]);
  }
}


class RestaurantsReviewWidget extends StatelessWidget {
  const RestaurantsReviewWidget({
    Key? key,
    required this.review,
    required this.restaurantsNumber,
    required this.icon
  }) : super(key: key);

  final double review ;
  final int restaurantsNumber;
  final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return Row(                                mainAxisSize: MainAxisSize.min,

        children: [
          Icon(
            icon,
            color: CustomColors.primary,
            size: CustomSizes.iconSize,
          ),
          CustomText(
              text: review.toString(),
              color: CustomColors.primary,
              fontSize: CustomSizes.header5,
              fontWeight: FontWeight.bold),
          CustomText(
              text:'(${restaurantsNumber.toString()})',
              color: CustomColors.black.withOpacity(0.8),
              fontSize: CustomSizes.header6),
        ]);
  }
}