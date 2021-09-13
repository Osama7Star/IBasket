import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class DiscountBannerWidget extends StatelessWidget {
  const DiscountBannerWidget({
    Key? key,required this.text, required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(CustomSizes.padding5),
      child: Container(
          color: CustomColors.yellow,
          child: Padding(
            padding: EdgeInsets.all(CustomSizes.padding8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: CustomColors.primary,
                  size: CustomSizes.iconSize,
                ),
                SizedBox(width: CustomSizes.horizontalSpace),
                 CustomText(
                  text: text,
                  color: CustomColors.primary,
                ),
              ],
            ),
          )),
    );
  }
}