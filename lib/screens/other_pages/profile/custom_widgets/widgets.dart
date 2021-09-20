import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';


class ProfileList extends StatelessWidget {
  const ProfileList({
    Key? key,
    required this.icon1,
    required this.icon2,
    required this.text,
    this.isIcon1 = true,
    this.isIcon2 = true,required this.function, this.text2, this.text1Color, this.text2Color,
  }) : super(key: key);

  final IconData icon1, icon2;
  final String text;
  final String? text2;

  final bool isIcon1, isIcon2;
  final Color? text1Color,text2Color;


  final Function() function ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:function,
      child: isIcon1
          ? ListTile(
        leading: isIcon1
            ? Icon(icon1,
            color: CustomColors.primary,
            size: CustomSizes.iconSizeMedium)
            : Container(width: 0),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                text: text,
                fontSize: CustomSizes.header4,
                color: text1Color??CustomColors.black,
                isCenter: false,
                fontWeight: FontWeight.bold),
            SizedBox(height:CustomSizes.verticalSpace),
            text2!=null?
            CustomText(
                text: text2??'',
                fontSize: CustomSizes.header5,
                color: text1Color??CustomColors.blackWithOpacity,
                isCenter: false,
                fontWeight: FontWeight.bold):
                Container(width:0)

          ],
        ),
        trailing: isIcon2
            ? Icon(icon2,
            color: CustomColors.primary, size: CustomSizes.iconSize)
            : Container(width: 0),
      )
          : Padding(
        padding: EdgeInsets.all(CustomSizes.padding4),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                  text: text,
                  fontSize: CustomSizes.header4,
                  color: CustomColors.black,
                  isCenter: false,
                  fontWeight: FontWeight.bold),
              isIcon2
                  ? Icon(icon2,
                  color: CustomColors.primary,
                  size: CustomSizes.iconSize)
                  : Container(width: 0)
            ]),
      ),
    );
  }
}