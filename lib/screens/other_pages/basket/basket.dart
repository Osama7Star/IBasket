import 'package:flutter/material.dart';
import 'package:getir_clone/screens/GetirFood/meal/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/addresses/add_address/addresses.dart';
import 'package:getir_clone/screens/other_pages/profile/custom_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/promotions/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Basket extends StatefulWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  int mealsNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBarWithIcons(
            context: context, text: 'Basket',color: CustomColors.white,fontSize:CustomSizes.header4, widget: Padding(
              padding:  EdgeInsets.all(8.0),
              child: Icon(Icons.delete),
            )),
        body: Stack(
          children: [
            ListView(children: [
              ProfileList(
                  icon1: Icons.no_meals_sharp,
                  text: 'Ayça Burger',
                  icon2: Icons.arrow_forward_ios,
                  function: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Addresses()),
                    );
                  }),
              SizedBox(height: CustomSizes.verticalSpace),
              Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: EdgeInsets.all(CustomSizes.padding5),
                    child: Row(children: [
                      Expanded(
                          flex: 4,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                    text: 'Iskender (Et Donerden',
                                    fontSize: CustomSizes.header4,
                                    color: CustomColors.black),
                                SizedBox(height: CustomSizes.verticalSpace),
                                CustomText(
                                    text: 'porsyon Tercihi 1',
                                    fontSize: CustomSizes.header5,
                                    color: CustomColors.black.withOpacity(0.5)),
                                CustomText(
                                    text: 'porsyon',
                                    fontSize: CustomSizes.header5,
                                    color: CustomColors.black.withOpacity(0.5)),
                                SizedBox(height: CustomSizes.verticalSpace),
                                CustomText(
                                    text: '₺ 34.00',
                                    fontSize: CustomSizes.header3,
                                    color: CustomColors.primary.withOpacity(1))
                              ])),
                      Expanded(
                        flex: 2,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ContainerIcon(
                                  paddingValue: CustomSizes.padding5,
                                  whichBox: 1,
                                  widget: Icon(
                                    Icons.minimize_sharp,
                                    color: CustomColors.primary,
                                    size: CustomSizes.iconSize / 2,
                                  ),
                                  function: () {
                                    setState(() {
                                      mealsNumber > 0
                                          ? mealsNumber--
                                          : mealsNumber;
                                    });
                                  }),
                              ContainerIcon(
                                  paddingValue: CustomSizes.padding5,
                                  whichBox: 3,
                                  isRounded: true,
                                  color: CustomColors.primary,
                                  widget: CustomText(
                                    text: ' ${mealsNumber} ',
                                    color: CustomColors.white,
                                    fontSize: CustomSizes.header6,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  function: () {}),
                              ContainerIcon(
                                  paddingValue: CustomSizes.padding5,
                                  whichBox: 2,
                                  widget: Icon(Icons.add,
                                      color: CustomColors.primary,
                                      size: CustomSizes.iconSize / 2),
                                  function: () {
                                    setState(() {
                                      mealsNumber = mealsNumber + 1;
                                    });
                                  }),
                            ]),
                      )
                    ]),
                  )),
              SizedBox(height: CustomSizes.verticalSpace*2),
              Padding(
                padding: EdgeInsets.only(left: CustomSizes.padding5),
                child: CustomText(
                    text: 'Yannında İyi Gider',
                    fontSize: CustomSizes.header5,
                    color: CustomColors.black.withOpacity(0.5),
                    isCenter: false),
              ),
              SizedBox(height: CustomSizes.verticalSpace*2),
              Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: EdgeInsets.all(CustomSizes.padding5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      BasketExtra(),
                      BasketExtra(),
                      BasketExtra(),
                      BasketExtra(),
                      BasketExtra(),
                    ]),
                  ),
                ),
              )
            ]),

            /// TODO: MAKE THIS
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
                              text: 'Continue',
                              color: CustomColors.white,
                              fontSize: CustomSizes.header4,
                              fontWeight: FontWeight.bold,
                            ),
                            function: () {}),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(

                          ),
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
                      ),
                    ]),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class BasketExtra extends StatelessWidget {
  const BasketExtra({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(CustomSizes.padding4),
            child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: CustomSizes.padding1,
                    horizontal: CustomSizes.padding3),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: CustomColors.black.withOpacity(0.1)),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    )),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: 'Ayran (300 ml)',
                          fontSize: CustomSizes.header5,
                          color: CustomColors.black,
                          isCenter: false),
                      SizedBox(height: CustomSizes.verticalSpace * 2),
                      CustomText(
                          text: '₺ 10.00',
                          fontSize: CustomSizes.header5,
                          color: CustomColors.primary,
                          isCenter: false),
                    ])),
          ),
          Positioned(
              top: 0,
              right: 0,
              child: IconInContainer(
                icon: Icons.add,
                radius: 10,
                iconSize: CustomSizes.iconSize / 1.5,
              )),
        ],
      ),
    ]);
  }
}
