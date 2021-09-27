import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir_water/water_model.dart';
import 'package:getir_clone/screens/GetirFood/meal/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key,required this.water}) : super(key: key);
  final WaterModel water;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isClicked = false;
  int mealsNumber = 0;

  double basketTotal = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBarWithIcons(context:context,text:'Product Details'),
      body: Stack(
        children: [
          Padding(
            padding:  EdgeInsets.only(bottom: CustomSizes.height6),
            child: ListView(
                children:[
                  Card(
                      margin:EdgeInsets.zero,

                      child: Column(
                        children: [
                          Image.network(
                              widget.water.imageUrl,height: getScreenHeight()/2,
                              fit:BoxFit.fill),
                          Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children:[
                                CustomText(text:"₺${widget.water.oldPrice}",fontSize:CustomSizes.header4,color:CustomColors.black.withOpacity(0.5),textDecoration: TextDecoration.lineThrough),
                                SizedBox(width:CustomSizes.padding8),
                                CustomText(text:"₺${widget.water.currentPrice}",fontSize:CustomSizes.header3,color:CustomColors.primary),

                              ]
                          ) ,
                          CustomText(text:"Gedik Pre-Cooked Chicken Schnitzel",fontSize:CustomSizes.header4,color:CustomColors.black),
                          CustomText(text:"200 g",fontSize:CustomSizes.header5,color:CustomColors.black.withOpacity(0.5)),
                          SizedBox(height:CustomSizes.verticalSpace),
                        ],
                      )
                  ),
                  SizedBox(height:CustomSizes.verticalSpace*2),
                  Padding(
                    padding:  EdgeInsets.only(left:CustomSizes.padding5),
                    child: CustomText(text:"Details",fontSize:CustomSizes.header5,color:CustomColors.black.withOpacity(0.5),isCenter:false),
                  ),
                  SizedBox(height:CustomSizes.verticalSpace*2),

                  Card(
                    margin:EdgeInsets.zero,
                    child: Padding(
                      padding:  EdgeInsets.all(CustomSizes.padding5),
                      child: CustomText(text:"Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel xxxxx ",fontSize:CustomSizes.header5,color:CustomColors.black.withOpacity(0.5),isCenter:false),
                    ),
                  ),
                ]
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              margin: EdgeInsets.zero,
              child: SizedBox(
                height: CustomSizes.height6,
                child: Padding(
                  padding: EdgeInsets.all(CustomSizes.padding5),
                  child: isClicked && mealsNumber > 0
                      ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ContainerIcon(
                            whichBox: 1,
                            widget: Icon(
                              Icons.minimize_sharp,
                              color: CustomColors.primary,
                              size: CustomSizes.iconSize,
                            ),
                            function: () {
                              setState(() {
                                mealsNumber > 0
                                    ? mealsNumber--
                                    : mealsNumber;
                                basketTotal =
                                    basketTotal - widget.water.currentPrice;
                              });
                            }),
                        ContainerIcon(
                            whichBox: 3,
                            isRounded: true,
                            color: CustomColors.primary,
                            widget: CustomText(
                              text: ' ${mealsNumber} ',
                              color: CustomColors.white,
                              fontSize: CustomSizes.header4,
                              fontWeight: FontWeight.bold,
                            ),
                            function: () {}),
                        ContainerIcon(
                            whichBox: 2,
                            widget: Icon(Icons.add,
                                color: CustomColors.primary,
                                size: CustomSizes.iconSize),
                            function: () {
                              setState(() {
                                mealsNumber = mealsNumber + 1;
                                basketTotal =
                                    basketTotal + widget.water.currentPrice;
                              });
                            }),
                      ])
                      : Container(
                    width: double.infinity,
                    child: CustomButton(
                        backGroundColor: CustomColors.primary,
                        textColor: CustomColors.white,
                        fontSize: CustomSizes.header5,
                        text: 'Add To Basket',
                        function: () {
                          setState(() {
                            isClicked = true;
                            mealsNumber = mealsNumber + 1;
                            basketTotal =
                                basketTotal + widget.water.currentPrice;
                          });
                        }),
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
