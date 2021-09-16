import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

CustomAppBar(BuildContext context,String text) => AppBar(
  centerTitle: true,
  title: CustomText(
      text: text,
      fontSize: CustomSizes.header3,
      color: CustomColors.yellow,
  fontWeight: FontWeight.bold),
);

CustomAppBarWithIcons(BuildContext context,String text) => AppBar(
  leading: IconButton(icon:Icon(Icons.close,size: CustomSizes.iconSizeMedium/1.2), onPressed: () {
    Navigator.of(context).pop();
  },),
  actions:   [
    Padding(
      padding: EdgeInsets.all(10),
      child: IconButton(icon:Icon(Icons.favorite,size: CustomSizes.iconSizeMedium/1.2),color:CustomColors.yellow, onPressed: () {  },),
    ),
  ],
  centerTitle: true,
  title: CustomText(
      text: text,
      fontSize: CustomSizes.header3,
      color: CustomColors.yellow,
      fontWeight: FontWeight.bold),
);
