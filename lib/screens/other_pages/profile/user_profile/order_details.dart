import 'package:flutter/material.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/user_profile/previous_order.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: CustomAppBarWithIcons(
            context: context,
            text: 'Basket',
            color: CustomColors.white,
            fontSize: CustomSizes.header4,
            widget: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.delete),
            )),
        body: ListView(children: [
          PreviousOrderWidget(),
          SizedBox(height: CustomSizes.verticalSpace * 2),
          Padding(
            padding: EdgeInsets.only(left: CustomSizes.padding5),
            child: CustomText(
                text: "Courier",
                color: CustomColors.blackWithOpacity,
                fontSize: CustomSizes.header5,
                isCenter: false),
          ),
          SizedBox(height: CustomSizes.verticalSpace * 2),
          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: EdgeInsets.all(CustomSizes.padding5),
              child: Row(children: [
                SizedBox(
                    width: CustomSizes.height6,
                    height: CustomSizes.height6,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                            'http://cdn.getir.com/person/60bb33e7efffe702c9c528e5.png?1622881399477'))),
                SizedBox(width: CustomSizes.verticalSpace * 2),
                CustomText(
                    text: "Barış ",
                    color: CustomColors.black,
                    fontSize: CustomSizes.header4,
                    isCenter: false),
              ]),
            ),
          ),
          SizedBox(height: CustomSizes.verticalSpace * 2),
          Padding(
            padding: EdgeInsets.only(left: CustomSizes.padding5),
            child: CustomText(
                text: "Rate your experience",
                color: CustomColors.blackWithOpacity,
                fontSize: CustomSizes.header5,
                isCenter: false),
          ),
          SizedBox(height: CustomSizes.verticalSpace * 2),

          SizedBox(height: CustomSizes.verticalSpace * 2),
          Padding(
            padding: EdgeInsets.only(left: CustomSizes.padding5),
            child: CustomText(
                text: "Basket",
                color: CustomColors.blackWithOpacity,
                fontSize: CustomSizes.header5,
                isCenter: false),
          ),
          SizedBox(height: CustomSizes.verticalSpace * 2),
          PreviousOrderBasket(),
          PreviousOrderBasket(),
          PreviousOrderBasket(),
          PreviousOrderBasket(),
          PreviousOrderBasket(),
          PreviousOrderBasket(),

        ]));
  }
}

class PreviousOrderBasket extends StatelessWidget {
  const PreviousOrderBasket({
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
            child:  Container(
                decoration: BoxDecoration(

                    border: Border.all(
                        color: CustomColors.black.withOpacity(0.1),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    )),
              child:Image.network(
                  'https://cdn.getir.com/product/5f43c8169d7e44a2f3fc199c_tr_1622551453764.jpeg')
            )
            ),
            SizedBox(width:CustomSizes.verticalSpace),
            Expanded(
              flex:4,
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  CustomText(
                      text: "Ülker Albeni White",
                      color: CustomColors.black,
                      fontSize: CustomSizes.header5,
                      isCenter: false),
                  CustomText(
                      text: "₺ Basket",
                      color: CustomColors.primary,
                      fontSize: CustomSizes.header5,
                      isCenter: false),
                ]
              ),
            ),
            Expanded(
              flex:1,
              child: DeliverTypeCircle(
                  color: CustomColors.primary.withOpacity(0.3),
                  widget: const CustomText(
                      text: "1",
                      color: CustomColors.primary,
                      fontWeight: FontWeight.bold)),
            ),

          ]
        ),
      ),
    );
  }
}
