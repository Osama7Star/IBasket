import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/resturant_details/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Meal extends StatelessWidget {
  const Meal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, 'Food Detail'),
      body: ListView(
        children: [
          Image.network(
              "https://cdn.getiryemek.com/cuisines/1619220348726_480x300.jpeg"),
          Card(
            child: Padding(
              padding: EdgeInsets.all(CustomSizes.padding5),
              child: MealDetails(),
            ),
          ),
          SizedBox(height: CustomSizes.verticalSpace),
          Padding(
            padding: EdgeInsets.all(CustomSizes.padding5),
            child: CustomText(
              text: "If you want to add a note : ",
              fontSize: CustomSizes.header5,
              color: CustomColors.black.withOpacity(0.5),
              isCenter: false,
            ),
          ),
          Card(
            child:
            TextField(
              textAlign: TextAlign.left,

              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
                hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
                contentPadding: EdgeInsets.symmetric(
                    vertical: CustomSizes.height7,
                    horizontal: CustomSizes.height7),
              ),
            ),


          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContainerIcon(whichBox:1,
               widget: Icon(
                    Icons.add,
                    color: CustomColors.primary,
                    size: CustomSizes.iconSizeMedium ,
                )),

                ContainerIcon(whichBox:3,isRounded:true,color:CustomColors.primary, widget:
                CustomText(text: '15',color:CustomColors.white,
                    fontSize: CustomSizes.header2,
                    )),
                ContainerIcon(whichBox:2, widget: Icon(
                    Icons.minimize_sharp,
                    color: CustomColors.primary,
                    size: CustomSizes.iconSizeMedium
                )),
              ]
          )
        ],
      ),
    );
  }
}

class ContainerIcon extends StatelessWidget {
  const ContainerIcon({
    Key? key,
    this.color = CustomColors.white,
    required this.widget, this.isRounded = false ,
    required this.whichBox
  }) : super(key: key);


  final Color color;

  final Widget widget;
  final bool isRounded ;

  final int  whichBox;
  // 1 for left box
  // 2 for right box
  // 3 for center box


  @override
  Widget build(BuildContext context) {
    double topLeft =0;
    double bottomLeft =0;
    double topRight =0;
    double bottomRight =0;
    switch  (whichBox)
    {
      case  1:  {
      topLeft     = CustomSizes.padding5;
      bottomLeft  = CustomSizes.padding5;
      topRight    = 0 ;
      bottomRight = 0 ;


    }
      break;
      case  2:  {
        topLeft     = 0;
        bottomLeft  = 0;
        topRight    = CustomSizes.padding5;
        bottomRight = CustomSizes.padding5;


      }
      break;
      case  3:  {
        topLeft     = 0;
        bottomLeft  = 0;
        topRight    = 0;
        bottomRight = 0;


      }
      break;

    }
    return Container(
      padding:isRounded?EdgeInsets.all(CustomSizes.header4): EdgeInsets.all(CustomSizes.header4),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft:  Radius.circular(topLeft),topRight:Radius.circular(topRight) ,bottomLeft:Radius.circular(bottomLeft) ,bottomRight:Radius.circular(bottomRight)  ),
        color: color,

      ),
      child: Center(child: widget),
    );
  }
}
