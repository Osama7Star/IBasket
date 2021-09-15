import 'package:flutter/material.dart';


class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
        required this.text,
        this.color = Colors.black,
        this.fontSize = 14, this.fontWeight=FontWeight.normal ,
      this.isCenter=true})
      : super(key: key);

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final bool isCenter ;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign:isCenter? TextAlign.center:TextAlign.start,

      style: TextStyle(fontSize: fontSize, color: color,fontWeight:fontWeight,fontFamily: 'Schyler'),
    );
  }
}
