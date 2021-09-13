import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/resturants/main_page.dart';
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
                        CustomText(
                            text: 'Home', fontSize: CustomSizes.header4),
                        CustomText(
                            text: 'Kervan geçmez',
                            color: CustomColors.black.withOpacity(0.5),
                            fontSize: CustomSizes.header4),
                        Icon(
                            Icons.arrow_forward_ios,
                            color: CustomColors.primary,
                            size: CustomSizes.iconSize

                        ),
                      ])),
            ),
            Expanded(
              flex:2,
              child: Container(

                  color: CustomColors.yellow,
                  child: Column(
                    children: [
                      CustomText(text: 'TVS',fontSize: CustomSizes.header5),
                      const SizedBox(height:5),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            CustomText(text: '8',fontSize: CustomSizes.header3,),
                            CustomText(text: 'min',fontSize: CustomSizes.header4),

                          ]
                      )
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
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            CustomButton(
                text: 'getir',
                backGroundColor: CustomColors.primary,
                textColor: CustomColors.yellow,function: (){}),




            CustomButton(text: 'getirfood'  ,function: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            }),
            CustomButton(text: 'getirmore'  ,function: (){}),
            CustomButton(text: 'getirwater' ,function: (){}),
            CustomButton(text: 'getirlocals',function: (){}),
          ]),
    );
  }
}
