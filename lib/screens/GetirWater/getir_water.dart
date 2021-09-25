import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir_water/water_model.dart';
import 'package:getir_clone/screens/Getir/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/bottom_bar.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/promotions/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

import 'detail_page.dart';

class GetirWater extends StatelessWidget {
  const GetirWater({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(context: context, text: 'getir',text2: 'water'),
        body: ListView(
          children: [
            const AddressBar(),
            Image.network(
              'https://cdn.getir.com/misc/611e4a50c270af509cd486b5_banner_en_1629375136600.jpeg',
            ),
            const MainCategories(),
            Card(
              margin:EdgeInsets.zero,
              child: SingleChildScrollView(
                child: Column(children: [
                  WaterBox(
                      function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DetailPage()),
                        );
                      },
                      water: waterList[0]),
                  WaterBox(
                      function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DetailPage()),
                        );
                      },
                      water: waterList[0]),
                  WaterBox(
                      function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DetailPage()),
                        );
                      },
                      water: waterList[0]),
                  WaterBox(
                      function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DetailPage()),
                        );
                      },
                      water: waterList[0]),
                ]),
              ),
            ),
            Card(
              margin:EdgeInsets.zero,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: waterList.length,
                primary: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  childAspectRatio: (3 / 5),
                ),
                itemBuilder: (context, index) {
                  return WaterBox(
                      height: 200,
                      dividedNumber: 1.3,
                      padding: 4,
                      radius: 5,
                      water: waterList[index],
                      function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DetailPage()),
                        );
                      });
                },
              ),
            )
          ],
        ),
      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.home),);
  }
}

class WaterBox extends StatelessWidget {
  const WaterBox(
      {Key? key,
      this.height,
      this.dividedNumber = 1,
      this.padding = 10,
      this.radius = 15,
      required this.function,
      required this.water})
      : super(key: key);

  final double? height;
  final double dividedNumber;
  final double padding;
  final double radius;

  final Function() function;

  final WaterModel water;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: function,

              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: CustomSizes.padding5,
                        right: CustomSizes.padding2,
                        left: CustomSizes.padding5),
                    child:
                        Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(

                              border: Border.all(
                                  color: CustomColors.black.withOpacity(0.1)),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Column(
                                  children: [
                                    height == null
                                        ? SizedBox(
                                            child: Image.network(water.imageUrl),
                                        height:200,
                                      width: getScreenWidth(),
                                          )
                                        : SizedBox(
                                            child: Image.network(
                                              water.imageUrl,
                                              fit: BoxFit.fitHeight,
                                              height: 80,
                                            ),
                                          )
                                  ],
                                ))),


                  ),
                  SizedBox(height: CustomSizes.verticalSpace / dividedNumber),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomText(
                        text: water.oldPrice.toString(),
                        fontSize: CustomSizes.header4 / dividedNumber,
                        color: CustomColors.black.withOpacity(0.5),
                        textDecoration: TextDecoration.lineThrough),
                    SizedBox(width: CustomSizes.padding8),
                    CustomText(
                        text: water.currentPrice.toString(),
                        fontSize: CustomSizes.header3 / dividedNumber,
                        color: CustomColors.primary),
                  ]),
                  SizedBox(height: CustomSizes.verticalSpace / dividedNumber),
                  CustomText(
                      text: water.name,
                      fontSize: CustomSizes.header5 / dividedNumber,
                      color: CustomColors.black),
                  SizedBox(height: CustomSizes.verticalSpace / dividedNumber),
                  height == null
                      ? Container(width: 0)
                      : CustomText(
                          text: "12 x 500 ml",
                          fontSize: CustomSizes.header5 / dividedNumber,
                          color: CustomColors.black.withOpacity(0.5),
                          isCenter: false)
                ],
              ),
            ),
            Positioned(
                right: CustomSizes.padding5,
                child: IconInContainer(
                    icon: Icons.add,
                    iconSize: CustomSizes.iconSize / dividedNumber,
                    padding: padding,
                    radius: radius,
                    isCircle: false,
                  borderColor: CustomColors.white,
                )),
          ],
        ),
      ],
    );
  }
}
