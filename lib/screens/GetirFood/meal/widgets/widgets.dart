import 'package:flutter/material.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';


class ContainerIcon extends StatelessWidget {
  const ContainerIcon(
      {Key? key,
        this.color = CustomColors.white,
        required this.widget,
        this.isRounded = false,
        required this.whichBox,
        required this.function})
      : super(key: key);

  final Color color;

  final Widget widget;
  final bool isRounded;

  final int whichBox;

  // 1 for left box
  // 2 for right box
  // 3 for center box
  final Function() function;

  @override
  Widget build(BuildContext context) {
    double topLeft = 0;
    double bottomLeft = 0;
    double topRight = 0;
    double bottomRight = 0;
    switch (whichBox) {
      case 1:
        {
          topLeft = CustomSizes.padding7;
          bottomLeft = CustomSizes.padding7;
          topRight = 0;
          bottomRight = 0;
        }
        break;
      case 2:
        {
          topLeft = 0;
          bottomLeft = 0;
          topRight = CustomSizes.padding7;
          bottomRight = CustomSizes.padding7;
        }
        break;
      case 3:
        {
          topLeft = 0;
          bottomLeft = 0;
          topRight = 0;
          bottomRight = 0;
        }
        break;
    }
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: EdgeInsets.all(CustomSizes.header4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeft),
              topRight: Radius.circular(topRight),
              bottomLeft: Radius.circular(bottomLeft),
              bottomRight: Radius.circular(bottomRight)),
          color: color,
        ),
        child: Center(child: widget),
      ),
    );
  }
}