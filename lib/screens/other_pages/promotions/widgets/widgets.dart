import 'package:flutter/material.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';
class IconInContainer extends StatelessWidget {
  const IconInContainer({Key? key,required this.icon, this.radius = 15, this.iconSize, this.padding=10}) : super(key: key);
  final IconData icon ;
  final double radius;
  final double? iconSize;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(
                  0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Icon(icon,
            color: CustomColors.primary,
            size: iconSize??CustomSizes.iconSize));
  }
}
