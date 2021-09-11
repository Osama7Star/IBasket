import 'package:flutter/material.dart';
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
      width: CustomSizes.iconSizeMedium,
      height: CustomSizes.iconSizeMedium,
      // child: Icon(Icons.error, size: CustomSizes.iconSize,),
      child:widget,
      decoration:  BoxDecoration(
          shape: BoxShape.circle,
          color: color),
    );
  }
}