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
        required this.function, this.paddingValue})
      : super(key: key);

  final Color color;

  final Widget widget;
  final bool isRounded;

  final int whichBox;
  final double? paddingValue;

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
          topLeft = CustomSizes.padding5;
          bottomLeft = CustomSizes.padding5;
          topRight = 0;
          bottomRight = 0;
        }
        break;
      case 2:
        {
          topLeft = 0;
          bottomLeft = 0;
          topRight    = CustomSizes.padding5;
          bottomRight = CustomSizes.padding5;
        }
        break;
      case 3:
        {
          topLeft      = 0;
          bottomLeft   = 0;
          topRight     = 0;
          bottomRight  = 0;
        }
        break;
    }
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: EdgeInsets.all(paddingValue??CustomSizes.header4),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(
                  0, 3), // changes position of shadow
            ),
          ],
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

class ContainerIcon1 extends StatelessWidget {
  const ContainerIcon1(
      {Key? key,
        this.color = CustomColors.white,
        required this.widget,
        this.isRounded = false,
        required this.whichBox,
        required this.function, this.paddingValue})
      : super(key: key);

  final Color color;

  final Widget widget;
  final bool isRounded;

  final int whichBox;
  final double? paddingValue;

  // 1 for top box
  // 2 for bottom box
  // 3 for center box
  final Function() function;

  @override
  Widget build(BuildContext context) {
    double topLeft      = 0;
    double bottomLeft   = 0;
    double topRight     = 0;
    double bottomRight  = 0;
    switch (whichBox) {
      case 1:
        {
          topLeft     = CustomSizes.padding8;
          topRight    = CustomSizes.padding8;
          bottomLeft  = 0;
          bottomRight = 0;
        }
        break;
      case 2:
        {
          topLeft = 0;
          topRight = 0;
          bottomLeft    = CustomSizes.padding8;
          bottomRight =   CustomSizes.padding8;
        }
        break;
      case 3:
        {
          topLeft      =  0;
          bottomLeft   =  0;
          topRight     =  0;
          bottomRight  =  0;
        }
        break;
    }
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: EdgeInsets.all(paddingValue??CustomSizes.padding8),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(
                  0, 3), // changes position of shadow
            ),
          ],
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