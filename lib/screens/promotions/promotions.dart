import 'package:flutter/material.dart';
import 'package:getir_clone/screens/GetirMore/product/product.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/profile/custom_widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Promotions extends StatelessWidget {
  const Promotions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: CustomAppBar(context, 'getir'),
      body: ListView(children: [
        Column(
          children:[
            promotion_card(),
            promotion_card(),
            promotion_card(),
            promotion_card(),
            promotion_card(),
            promotion_card(),

          ]
        )
      ]),
    );
  }
}

class promotion_card extends StatelessWidget {
  const promotion_card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: EdgeInsets.all(CustomSizes.padding5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ClipRRect(
              borderRadius: BorderRadius.circular(10),
    child: Image.network(
              'https://cdn.getir.com/misc/611e4a50c270af509cd486b5_banner_en_1629375136600.jpeg',
            ),
              ),
            SizedBox(height: CustomSizes.verticalSpace),
            CustomText(
                text: 'Feast ürünlerinde 30% indirim !',
                color: CustomColors.primary,
                fontSize: CustomSizes.header5,
                isCenter: false),
            SizedBox(height: CustomSizes.verticalSpace),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 6,
                      child: CustomText(
                          text:
                              'Feast ürünlerinde 30% indirim Feast ürünlerinde 30% indirimFeast ürünlerinde 30% indirimFeast ürünlerinde 30% indirimFeast ürünlerinde 30% indirimFeast ürünlerinde 30% indirimFeast ürünlerinde 30% indirim !',
                          color: CustomColors.black,
                          fontSize: CustomSizes.header5,
                          isCenter: false)),
                  Expanded(
                      flex: 1,
                      child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Icon(Icons.arrow_forward_ios,
                              color: CustomColors.primary,
                              size: CustomSizes.iconSize)))
                ])
          ])),
    );
  }
}
