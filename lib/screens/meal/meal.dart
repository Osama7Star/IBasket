import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/resturant_details/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

import 'image_viewer.dart';

class Meal extends StatefulWidget {
  const Meal({Key? key}) : super(key: key);

  @override
  State<Meal> createState() => _MealState();
}

class _MealState extends State<Meal> {
  int mealsNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white1,
      appBar: CustomAppBar(context, 'Food Detail'),
      body: Stack(
        children: [
          ListView(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ImageViewer()),
                  );
                },
                child: Image.network(
                    "https://cdn.getiryemek.com/cuisines/1619220348726_480x300.jpeg"),
              ),
              Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: EdgeInsets.all(CustomSizes.padding5),
                  child: const MealDetails(),
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
                margin: EdgeInsets.zero,
                elevation: 0,
                child: TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    hintText: 'Enter a search term',
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: CustomSizes.height8 * 1.5,
                        horizontal: CustomSizes.height8),
                  ),
                ),
              ),
              SizedBox(height: CustomSizes.verticalSpace),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ContainerIcon(
                    whichBox: 1,
                    widget: Icon(
                      Icons.minimize_sharp,
                      color: CustomColors.primary,
                      size: CustomSizes.iconSize,
                    ),
                    function: () {
                      setState(() {
                        mealsNumber > 0 ? mealsNumber-- : mealsNumber;
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
                      });
                    }),
              ]),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 80,
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
          )
        ],
      ),
    );
  }
}

class ContainerIcon extends StatelessWidget {
  const ContainerIcon(
      {Key? key,
      this.color = CustomColors.white,
      required this.widget,
      this.isRounded = false,
      required this.whichBox,
      required this.function})
      : super(key: key);

  final Color color;

  final Widget widget;
  final bool isRounded;

  final int whichBox;

  // 1 for left box
  // 2 for right box
  // 3 for center box
  final Function() function;

  @override
  Widget build(BuildContext context) {
    double topLeft = 0;
    double bottomLeft = 0;
    double topRight = 0;
    double bottomRight = 0;
    switch (whichBox) {
      case 1:
        {
          topLeft = CustomSizes.padding7;
          bottomLeft = CustomSizes.padding7;
          topRight = 0;
          bottomRight = 0;
        }
        break;
      case 2:
        {
          topLeft = 0;
          bottomLeft = 0;
          topRight = CustomSizes.padding7;
          bottomRight = CustomSizes.padding7;
        }
        break;
      case 3:
        {
          topLeft = 0;
          bottomLeft = 0;
          topRight = 0;
          bottomRight = 0;
        }
        break;
    }
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: EdgeInsets.all(CustomSizes.header4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeft),
              topRight: Radius.circular(topRight),
              bottomLeft: Radius.circular(bottomLeft),
              bottomRight: Radius.circular(bottomRight)),
          color: color,
        ),
        child: Center(child: widget),
      ),
    );
  }
}
