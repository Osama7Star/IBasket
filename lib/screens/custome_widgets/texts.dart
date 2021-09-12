import 'package:flutter/material.dart';


class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
        required this.text,
        this.color = Colors.black,
        this.fontSize = 14, this.fontWeight=FontWeight.normal})
      : super(key: key);

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,

      style: TextStyle(fontSize: fontSize, color: color,fontWeight:fontWeight),
    );
  }
}
