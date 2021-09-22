import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/other_pages/basket/basket.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

import 'buttons.dart';

CustomAppBar(
        {required BuildContext context,
        required String text,
        Color? color,
        double? fontSize}) =>
    AppBar(
      centerTitle: true,
      backgroundColor:CustomColors.primary2 ,
      title: CustomText(
          text: text,
          fontSize: fontSize ?? CustomSizes.header5,
          color: color ?? CustomColors.yellow,
          fontWeight: FontWeight.bold),
    );

CustomAppBarWithIcons({required BuildContext context,required String text,bool hideLeftIcon = false, Widget? widget,Color? color,
  double? fontSize}) => AppBar(
      leading: IconButton(
        icon: hideLeftIcon?Container(width:0):Icon(Icons.close, size: CustomSizes.iconSizeMedium / 1.2),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        widget?? Padding(
          padding: EdgeInsets.all(10),
          child: IconButton(
            icon: Icon(Icons.favorite, size: CustomSizes.iconSizeMedium / 1.2),
            color: CustomColors.yellow,
            onPressed: () {},
          ),
        ),

      ],
      centerTitle: true,
      title: CustomText(
          text: text,
          fontSize:fontSize?? CustomSizes.header3,
          color:color?? CustomColors.white,
          fontWeight: FontWeight.bold),
    );
class IconTextInContainer extends StatelessWidget {
  const IconTextInContainer({Key? key,required this.text,required this.icon}) : super(key: key);

  final String text;
  final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return     Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        color: CustomColors.primary.withOpacity(0.15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            text: text,
            color: CustomColors.primary,
            fontSize: CustomSizes.header5,
          ),
          Icon(icon,
              size: CustomSizes.iconSize / 1.3,
              color: CustomColors.primary),
        ],
      ),
    );
  }
}

class BasketCard extends StatelessWidget {
  const BasketCard({
    Key? key,required this.value,required this.fromWhichPage,
  }) : super(key: key);

  final double value;
  final int fromWhichPage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Basket(fromWhichPage:fromWhichPage)),
        );
      },
      child:value>0?Padding(
        padding:  EdgeInsets.all(CustomSizes.padding5),
        child: Container(
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:CustomColors.white,

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
            child:Row(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.shopping_bag,size:CustomSizes.iconSize,color:CustomColors.yellow),
                  ),
                  Container(
                    padding:  EdgeInsets.all(CustomSizes.padding5),

                    color:CustomColors.primary.withOpacity(0.1),
                    child:CustomText(text:'₺ ${value.toStringAsFixed(2)}' ,fontSize:CustomSizes.header5,color:CustomColors.primary),
                  )
                ]
            )
        ),
      ):SizedBox(width:0),
    );
  }
}


/// POPUP MESSAGE



