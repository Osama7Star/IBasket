import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/restaurants/resturants.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class AddressBar extends StatelessWidget {
  const AddressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.yellow,
      child: Column(
        children: [
          Row(children: [
            Expanded(
              flex: 6,
              child: Container(
                  padding: EdgeInsets.all(CustomSizes.padding1),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.pink,
                          size: CustomSizes.iconSize,
                        ),
                        const VerticalDivider(color: Colors.red, width: 20),
                        CustomText(text: 'Home', fontSize: CustomSizes.header4),
                        CustomText(
                            text: 'Kervan geçmez',
                            color: CustomColors.black.withOpacity(0.5),
                            fontSize: CustomSizes.header4),
                        Icon(Icons.arrow_forward_ios,
                            color: CustomColors.primary,
                            size: CustomSizes.iconSize/1.5),
                      ])),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  color: CustomColors.yellow,
                  child: Column(
                    children: [
                      CustomText(text: 'TVS', fontSize: CustomSizes.header5,
                        fontWeight:FontWeight.bold,
                      ),
                      const SizedBox(height: 5),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: '8',
                              fontSize: CustomSizes.header3,
                              fontWeight:FontWeight.bold,
                            ),
                            CustomText(
                                text: 'min', fontSize: CustomSizes.header4,
                              fontWeight:FontWeight.bold,
                            ),
                          ])
                    ],
                  )),
            )
          ]),
        ],
      ),
    );
  }
}

class MainCategories extends StatelessWidget {
  const MainCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(

        children: [
          SizedBox(
            height:CustomSizes.verticalSpace*2,
          ),
          SizedBox(
            width:getScreenWidth(),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                  CustomButton(
                    text: 'getir',
                    backGroundColor: CustomColors.primary,
                    textColor: CustomColors.yellow,
                    function: () {},
                    fontWeight: FontWeight.bold,
                    width: getScreenWidth()*0.17,
                    height: CustomSizes.height4/3.5,),
                  CustomButton(
                      text: 'getirfood',
                      fontWeight: FontWeight.bold,
                      function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainPage()),
                        );
                      },
                      width: getScreenWidth()*0.17,
                    height: CustomSizes.height4/3.5,),
                  CustomButton(
                      text: 'getirmore', function: () {}, fontWeight: FontWeight.bold,
                      width: getScreenWidth()*0.17,
                    height: CustomSizes.height4/3.5,),
                  CustomButton(
                      text: 'getirwater', function: () {}, fontWeight: FontWeight.bold,
                      width: getScreenWidth()*0.17,
                    height: CustomSizes.height4/3.5,),
                  CustomButton(
                      text: 'getirlocals', function: () {}, fontWeight: FontWeight.bold,
                      width: getScreenWidth()*0.17,
                    height: CustomSizes.height4/3.5,),
                ]),

                SizedBox(
                  height:CustomSizes.verticalSpace*2,
                )
              ],

            ),
          ),
        ],
      )
    );
  }
}
