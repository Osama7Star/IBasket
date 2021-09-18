import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/other_pages/basket/basket.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

CustomAppBar(
        {required BuildContext context,
        required String text,
        Color? color,
        double? fontSize}) =>
    AppBar(
      centerTitle: true,
      title: CustomText(
          text: text,
          fontSize: fontSize ?? CustomSizes.header3,
          color: color ?? CustomColors.yellow,
          fontWeight: FontWeight.bold),
    );

CustomAppBarWithIcons({required BuildContext context,required String text, Widget? widget}) => AppBar(
      leading: IconButton(
        icon: Icon(Icons.close, size: CustomSizes.iconSizeMedium / 1.2),
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
          fontSize: CustomSizes.header3,
          color: CustomColors.yellow,
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
    Key? key,required this.value,
  }) : super(key: key);

  final int value;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Basket()),
        );
      },
      child: Padding(
        padding:  EdgeInsets.all(CustomSizes.padding5),
        child: Container(
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:CustomColors.white,


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
                    child:CustomText(text:'₺ ${value}' ,fontSize:CustomSizes.header5,color:CustomColors.primary),
                  )
                ]
            )
        ),
      ),
    );
  }
}
