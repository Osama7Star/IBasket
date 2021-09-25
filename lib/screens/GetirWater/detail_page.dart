import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir_water/water_model.dart';
import 'package:getir_clone/screens/GetirFood/meal/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key,required this.water}) : super(key: key);
  final WaterModel water;
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
                              water.imageUrl,height: getScreenHeight()/2,
                              fit:BoxFit.fill),
                          Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children:[
                                CustomText(text:"₺${water.oldPrice}",fontSize:CustomSizes.header4,color:CustomColors.black.withOpacity(0.5),textDecoration: TextDecoration.lineThrough),
                                SizedBox(width:CustomSizes.padding8),
                                CustomText(text:"₺${water.currentPrice}",fontSize:CustomSizes.header3,color:CustomColors.primary),

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
                  child: Row(children: [
                    Expanded(
                      flex: 7,
                      child: ContainerIcon(
                          whichBox: 1,
                          isRounded: true,
                          color: CustomColors.primary,
                          widget: CustomText(
                            text: 'Add To Basket',
                            color: CustomColors.white,
                            fontSize: CustomSizes.header4,
                            fontWeight: FontWeight.bold,
                          ),
                          function: () {}),
                    ),
                    Expanded(
                      flex: 4,
                      child: ContainerIcon(
                          whichBox: 2,
                          isRounded: true,
                          color: CustomColors.white,
                          widget: CustomText(
                            text: '₺ 420,00',
                            color: CustomColors.primary,
                            fontSize: CustomSizes.header3,
                            fontWeight: FontWeight.bold,
                          ),
                          function: () {}),
                    ),
                  ]),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
