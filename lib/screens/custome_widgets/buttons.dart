import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
        required this.text,
        this.backGroundColor = CustomColors.white,
        this.textColor = CustomColors.primary,required this.function,
      this.fontWeight = FontWeight.normal, this.height, this.width, this.fontSize, this.borderSize})
      : super(key: key);

  final String text;

  final Color backGroundColor, textColor;
  final VoidCallback function ;
  final FontWeight fontWeight;
  final double? height,width;
  final double? fontSize;
  final double? borderSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: CustomSizes.padding6),
      child: SizedBox(
        height:height??CustomSizes.height7,
        width:width??CustomSizes.height1,

        child: TextButton(
          child: CustomText(
            text: text,
            color: textColor,
            fontSize: fontSize??CustomSizes.header6,
            fontWeight:fontWeight,

          ),

          style: ButtonStyle(
            elevation:MaterialStateProperty.all(1) ,
              backgroundColor: MaterialStateProperty.all(backGroundColor),
              side: MaterialStateProperty.all(
                   BorderSide(width: borderSize??0.1, color: CustomColors.primary)),
              shadowColor:MaterialStateProperty.all(CustomColors.black)
          ),

          onPressed: function,
        ),
      ),
    );
  }
}