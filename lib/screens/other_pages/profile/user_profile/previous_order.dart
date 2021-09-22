import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/promotions/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class PreviousOrder extends StatelessWidget {
  const PreviousOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar:CustomAppBar(context:context,text:'Previous Order'),
     body: ListView(
          children: [
            PreviousOrderWidget(),

            Container(
              padding:EdgeInsets.all(CustomSizes.padding5),
              height: 0.3,
              width: 0.1,
              color: CustomColors.blackWithOpacity.withOpacity(0.1),
            ),
            PreviousOrderWidget(),

            PreviousOrderWidget(),

            PreviousOrderWidget(),
            PreviousOrderWidget(),

            Container(
              padding:EdgeInsets.all(CustomSizes.padding5),
              height: 0.3,
              width: 0.1,
              color: CustomColors.blackWithOpacity.withOpacity(0.1),
            ),
            PreviousOrderWidget(),

            PreviousOrderWidget(),

            PreviousOrderWidget(),
            PreviousOrderWidget(),

            Container(
              padding:EdgeInsets.all(CustomSizes.padding5),
              height: 0.3,
              width: 0.1,
              color: CustomColors.blackWithOpacity.withOpacity(0.1),
            ),
            PreviousOrderWidget(),

            PreviousOrderWidget(),

            PreviousOrderWidget(),
            PreviousOrderWidget(),

            Container(
              padding:EdgeInsets.all(CustomSizes.padding5),
              height: 0.3,
              width: 0.1,
              color: CustomColors.blackWithOpacity.withOpacity(0.1),
            ),
            PreviousOrderWidget(),

            PreviousOrderWidget(),

            PreviousOrderWidget(),
            PreviousOrderWidget(),

            Container(
              padding:EdgeInsets.all(CustomSizes.padding5),
              height: 0.3,
              width: 0.1,
              color: CustomColors.blackWithOpacity.withOpacity(0.1),
            ),
            PreviousOrderWidget(),

            PreviousOrderWidget(),

            PreviousOrderWidget(),

          ]
      )
    );
  }
}

class PreviousOrderWidget extends StatelessWidget {
  const PreviousOrderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:EdgeInsets.zero,
      child: Padding(
        padding:  EdgeInsets.all(CustomSizes.padding5),
        child: Row(
          children:[
            Expanded(
              flex:2,
              child: IconInContainer(
                icon: Icons.home,
                radius: 15,
                iconSize: CustomSizes.iconSize ,
              ),
            ),
            SizedBox(width:CustomSizes.verticalSpace),
            Expanded(
              flex:5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                   text: "13 jun 2021 10:20",
                   color: CustomColors.primary.withOpacity(0.5),
                   fontSize: CustomSizes.header5,
                      ),
                  RichText(
                      text: TextSpan(
                        text: '',
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Home ',
                              style: TextStyle(
                                color: CustomColors.black,
                                fontSize: CustomSizes.header5,
                              )),
                          TextSpan(
                              text: 'kervan geçmez sk. no.50',
                              style: TextStyle(
                                color: CustomColors.blackWithOpacity,
                                fontSize: CustomSizes.header5,

                              )),
                        ],
                      )),
                ],
              ),
            ),


            Expanded(flex:4,child: BasketCard(value: 10,fromWhichPage: 1,)),
            Icon(Icons.arrow_forward_ios,color: CustomColors.black,size:CustomSizes.iconSize/1.5)

          ]
        ),
      ),
    );
  }
}
