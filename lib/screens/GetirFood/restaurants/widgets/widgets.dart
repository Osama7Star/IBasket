import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class DeliverTypeCircle extends StatelessWidget {
  const DeliverTypeCircle({
    required this.widget,
    this.color = CustomColors.primary,
    Key? key, this.padding, this.borderColor,
  }) : super(key: key);

  final Widget widget;
  final Color color;
  final Color? borderColor;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(padding??CustomSizes.padding8),

      // child: Icon(Icons.error, size: CustomSizes.iconSize,),
      child:widget,
      decoration:  BoxDecoration(

          border: Border.all(color: borderColor??color),
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            CustomText(text:text,fontSize: CustomSizes.padding4,color:CustomColors.primary)
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
            size: CustomSizes.iconSize/1.5,
          ),
          CustomText(
              text: review.toString(),
              color: CustomColors.primary,
              fontSize: CustomSizes.header5,
              fontWeight: FontWeight.bold),
          CustomText(
              text:' (${restaurantsNumber.toString()})',
              color: CustomColors.black.withOpacity(0.8),
              fontSize: CustomSizes.header7),
        ]);
  }
}