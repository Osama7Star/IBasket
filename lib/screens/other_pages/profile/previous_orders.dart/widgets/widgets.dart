import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/other_pages/promotions/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

import '../order_details.dart';
class PreviousOrderWidget extends StatelessWidget {
  const PreviousOrderWidget({Key? key, this.canReorder = true})
      : super(key: key);
  final bool canReorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  OrderDetails()),
        );
      },
      child: Card(
        margin:EdgeInsets.zero,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal:CustomSizes.padding5 / 2,vertical: CustomSizes.padding5*2),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Expanded(
                  flex: 2,
                  child: IconInContainer(
                      icon: Icons.home,
                      borderColor: CustomColors.white,
                      padding: CustomSizes.padding6,
                      iconSize: CustomSizes.iconSize * 1.3)),
              Expanded(
                flex:canReorder? 5:8,
                child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  CustomText(
                      text: '2 sept 2021 00:44',
                      color: CustomColors.primary,
                      fontSize: CustomSizes.header5),
                  CustomText(
                    text: 'Antep Lahmacun & pide Antep Lahmacun & pide Antep Lahmacun & pide Antep Lahmacun & pide',
                    color: CustomColors.black,
                    fontSize: CustomSizes.header5,
                    maxLines: 1,
                    isCenter: false,
                  ),
                ]),
              ),
              canReorder? Expanded(
                  flex: 3,
                  child: CustomButton(
                      function: () {},
                      text: 'Reorder',
                      fontSize: CustomSizes.header5,
                      borderSize: 1)):
              Container(
                width:0,
              ),
              Expanded(
                  flex: 1,
                  child: Icon(Icons.arrow_forward_ios,
                      color: CustomColors.primary, size: CustomSizes.iconSize))
            ])

        ),
      ),
    );
  }
}