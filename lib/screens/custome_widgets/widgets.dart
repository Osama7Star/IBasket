import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

CustomAppBar(BuildContext context,String text) => AppBar(
  centerTitle: true,
  title: CustomText(
      text: text,
      fontSize: CustomSizes.header3,
      color: CustomColors.yellow),
);
