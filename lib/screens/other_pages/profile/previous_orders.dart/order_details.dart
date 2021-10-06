import 'package:flutter/material.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';

import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/promotions/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            context: context,
            text: 'Previous orders',
            color: CustomColors.white),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: CustomSizes.height6),
              child: ListView(children: [
                Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: CustomSizes.padding5,
                        vertical: CustomSizes.padding5 * 2),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconInContainer(
                              icon: Icons.home,
                              borderColor: CustomColors.white,
                              padding: CustomSizes.padding6,
                              iconSize: CustomSizes.iconSize * 1.3),
                          SizedBox(width: CustomSizes.verticalSpace),
                          Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: '2 sept 2021 00:44',
                                      color: CustomColors.primary,
                                      fontSize: CustomSizes.header5),
                                  CustomText(
                                    text:
                                        'Antep Lahmacun & pide Antep Lahmacun & pide Antep Lahmacun & pide Antep Lahmacun & pide',
                                    color: CustomColors.black,
                                    fontSize: CustomSizes.header5,
                                    maxLines: 1,
                                    isCenter: false,
                                  ),
                                ]),
                          ),
                        ]),
                  ),
                ),
                SizedBox(height: CustomSizes.verticalSpace),
                Padding(
                  padding: EdgeInsets.only(left: CustomSizes.padding5),
                  child: CustomText(
                      text: 'Order Status',
                      fontSize: CustomSizes.header5,
                      color: CustomColors.blackWithOpacity,
                      isCenter: false),
                ),
                SizedBox(height: CustomSizes.verticalSpace),
                Card(
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: EdgeInsets.all(CustomSizes.padding5),
                      child: Row(children: [
                        DeliverTypeCircle(
                            color: CustomColors.green,
                            padding: CustomSizes.padding6,
                            widget: CustomText(
                                text: "R",
                                color: CustomColors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: CustomSizes.header1)),
                        SizedBox(width: CustomSizes.verticalSpace * 2),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  text: 'Delivered',
                                  fontSize: CustomSizes.header5,
                                  color: CustomColors.green,
                                  isCenter: false),
                              SizedBox(height: CustomSizes.verticalSpace / 2),
                              CustomText(
                                  text: 'Antep Lahmacun & Pide',
                                  fontSize: CustomSizes.header5 + 2,
                                  color: CustomColors.black,
                                  isCenter: false,
                                  fontWeight: FontWeight.bold),
                              SizedBox(height: CustomSizes.verticalSpace / 2),
                              CustomText(
                                  text: '20 spe 2021 00:55',
                                  fontSize: CustomSizes.header5,
                                  color: CustomColors.green,
                                  isCenter: false),
                            ])
                      ]),
                    )),
                SizedBox(height: CustomSizes.verticalSpace * 2),
                Padding(
                  padding: EdgeInsets.only(left: CustomSizes.padding5),
                  child: CustomText(
                      text: 'Courier',
                      fontSize: CustomSizes.header5,
                      color: CustomColors.blackWithOpacity,
                      isCenter: false),
                ),
                SizedBox(height: CustomSizes.verticalSpace * 2),
                Card(
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: EdgeInsets.all(CustomSizes.padding5),
                      child: Row(children: [
                        Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ35vmfs9Ne2gNHk0nr029XdEvv4ay637HwHyqJisCVYDvUy08nnEoX2tQvRKsGFWoVtCU&usqp=CAU',
                            height: CustomSizes.height5 * 2,
                            width: CustomSizes.height6 * 2),
                        SizedBox(width: CustomSizes.verticalSpace),
                        CustomText(
                            text: 'Restoran Kuryesi',
                            fontSize: CustomSizes.header5 + 2,
                            color: CustomColors.black,
                            isCenter: false,
                            fontWeight: FontWeight.bold),
                      ]),
                    )),
                SizedBox(height: CustomSizes.verticalSpace * 2),
                Padding(
                  padding: EdgeInsets.only(left: CustomSizes.padding5),
                  child: CustomText(
                      text: 'Restaurant',
                      fontSize: CustomSizes.header5,
                      color: CustomColors.blackWithOpacity,
                      isCenter: false),
                ),
                SizedBox(height: CustomSizes.verticalSpace * 2),
                Card(
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: EdgeInsets.all(CustomSizes.padding5),
                      child: Row(children: [
                        Expanded(
                          flex: 2,
                          child: Card(
                            margin: EdgeInsets.zero,
                            child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ35vmfs9Ne2gNHk0nr029XdEvv4ay637HwHyqJisCVYDvUy08nnEoX2tQvRKsGFWoVtCU&usqp=CAU',
                                height: CustomSizes.height5 * 2,
                                width: CustomSizes.height6 * 2),
                          ),
                        ),
                        SizedBox(width: CustomSizes.verticalSpace),
                        Expanded(
                          flex: 5,
                          child: CustomText(
                              text: 'Restoran Kuryesi',
                              fontSize: CustomSizes.header5 + 2,
                              color: CustomColors.black,
                              isCenter: false,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.arrow_forward_ios,
                              size: CustomSizes.iconSize,
                              color: CustomColors.primary),
                        ),
                      ]),
                    )),
                SizedBox(height: CustomSizes.verticalSpace * 2),
                Padding(
                  padding: EdgeInsets.only(left: CustomSizes.padding5),
                  child: CustomText(
                      text: 'Basket',
                      fontSize: CustomSizes.header5,
                      color: CustomColors.blackWithOpacity,
                      isCenter: false),
                ),
                SizedBox(height: CustomSizes.verticalSpace * 2),
                BasketDetailsWidget(
                  mealNumber: 2,
                ),
                BasketDetailsWidget(mealNumber: 1, isDetails: false),
                BasketDetailsWidget(
                  mealNumber: 3,
                ),
                SizedBox(height: CustomSizes.verticalSpace * 2),
                Padding(
                  padding: EdgeInsets.only(left: CustomSizes.padding5),
                  child: CustomText(
                      text: 'Payment Details',
                      fontSize: CustomSizes.header5,
                      color: CustomColors.blackWithOpacity,
                      isCenter: false),
                ),
                SizedBox(height: CustomSizes.verticalSpace * 2),
                PaymentDetailsWidget(
                    text1: 'Total',
                    text2: '₺ 31',
                    color2: CustomColors.blackWithOpacity),
                PaymentDetailsWidget(
                  text1: 'Saved',
                  text2: '₺ 15.50',
                  color1: CustomColors.primary,
                  color2: CustomColors.primary,
                ),
                PaymentDetailsWidget(
                  text1: 'Charget Amount',
                  text2: '₺ 15.50',
                  color1: CustomColors.primary,
                  color2: CustomColors.primary,
                ),
              ]),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding:  EdgeInsets.all(CustomSizes.padding5),
                  child: SizedBox(
                    width: double.infinity,
                    height: CustomSizes.height5,
                    child: CustomButton(
                        backGroundColor: CustomColors.primary,
                        textColor: CustomColors.white,
                        fontSize: CustomSizes.header4,
                        text: 'Reorder',
                        function: () {}),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

class PaymentDetailsWidget extends StatelessWidget {
  const PaymentDetailsWidget({
    Key? key,
    required this.text1,
    required this.text2,
    this.color1 = CustomColors.black,
    this.color2 = CustomColors.black,
  }) : super(key: key);

  final String text1, text2;
  final Color color1, color2;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: EdgeInsets.all(CustomSizes.padding5),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomText(
              text: text1,
              fontSize: CustomSizes.header4,
              color: color1,
              isCenter: false,
            ),
            CustomText(
                text: text2,
                fontSize: CustomSizes.header4,
                color: color2,
                isCenter: false),
          ]),
        ));
  }
}

class BasketDetailsWidget extends StatelessWidget {
  const BasketDetailsWidget({
    Key? key,
    this.isDetails = true,
    required this.mealNumber,
  }) : super(key: key);

  final bool isDetails;

  final mealNumber;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: EdgeInsets.all(CustomSizes.padding5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomText(
                  text: 'Lahmacun',
                  fontSize: CustomSizes.header5 + 3,
                  color: CustomColors.black,
                  isCenter: false),
              SizedBox(height: CustomSizes.verticalSpace / 1.5),
              isDetails
                  ? CustomText(
                      text: 'Acılı / Acisiz Terchihi : Acısız',
                      fontSize: CustomSizes.header5,
                      color: CustomColors.blackWithOpacity,
                      isCenter: false)
                  : Container(width: 0),
              SizedBox(height: CustomSizes.verticalSpace / 1.5),
              CustomText(
                  text: '₺ 20',
                  fontSize: CustomSizes.header4,
                  color: CustomColors.primary,
                  isCenter: false),
            ]),
            DeliverTypeCircle(
                color: CustomColors.primary.withOpacity(0.2),
                borderColor: CustomColors.primary,
                padding: CustomSizes.padding3,
                widget: CustomText(
                    text: "${mealNumber}",
                    color: CustomColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: CustomSizes.header1)),
          ],
        ),
      ),
    );
  }
}
