import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
        required this.text,
        this.backGroundColor = CustomColors.white,
        this.textColor = CustomColors.primary,required this.function})
      : super(key: key);

  final String text;

  final Color backGroundColor, textColor;
  final VoidCallback function ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: CustomSizes.padding6),
      child: TextButton(
        child: CustomText(
          text: text,
          color: textColor,
          fontSize: CustomSizes.header6,
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backGroundColor),
            side: MaterialStateProperty.all(
                const BorderSide(width: 0.1, color: CustomColors.black)),
            shadowColor:MaterialStateProperty.all(CustomColors.black)
        ),

        onPressed: function,
      ),
    );
  }
}