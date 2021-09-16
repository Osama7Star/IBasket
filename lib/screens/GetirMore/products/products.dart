import 'package:flutter/material.dart';
import 'package:getir_clone/models/category_model.dart';
import 'package:getir_clone/screens/GetirMore/products/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(context, 'Products'),
        body: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: const [
                CategoryWithUnderLine(),
                CategoryWithUnderLine(),
                CategoryWithUnderLine(isSelected: true),
                CategoryWithUnderLine(),

              ]),
            ),

            Card(
              margin:EdgeInsets.zero,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding:  EdgeInsets.all(CustomSizes.padding5),
                  child: Row(children: [
                    CustomButton(
                      text: 'Goes Well with all kinds of customers ',
                      backGroundColor: CustomColors.primary,
                      textColor: CustomColors.white,
                      function: () {},
                      fontWeight: FontWeight.bold,
                      height: CustomSizes.height4 / 3.5,
                    ),
                    CustomButton(
                      text: 'Bakery',
                      backGroundColor: CustomColors.white,
                      textColor: CustomColors.primary,
                      function: () {},
                      fontWeight: FontWeight.bold,
                      width: getScreenWidth() * 0.17,
                      height: CustomSizes.height4 / 3.5,
                    ),
                    CustomButton(
                      text: 'Frozen Bakery ',
                      backGroundColor: CustomColors.white,
                      textColor: CustomColors.primary,
                      function: () {},
                      fontWeight: FontWeight.bold,
                      width: getScreenWidth() * 0.17,
                      height: CustomSizes.height4 / 3.5,
                    ),
                    CustomButton(
                      text: 'Gluten Free',
                      backGroundColor: CustomColors.white,
                      textColor: CustomColors.primary,
                      function: () {},
                      fontWeight: FontWeight.bold,
                      width: getScreenWidth() * 0.17,
                      height: CustomSizes.height4 / 3.5,
                    ),
                    CustomButton(
                      text: 'getir',
                      backGroundColor: CustomColors.white,
                      textColor: CustomColors.primary,
                      function: () {},
                      fontWeight: FontWeight.bold,
                      width: getScreenWidth() * 0.17,
                      height: CustomSizes.height4 / 3.5,
                    ),
                    CustomButton(
                      text: 'getir',
                      backGroundColor: CustomColors.white,
                      textColor: CustomColors.primary,
                      function: () {},
                      fontWeight: FontWeight.bold,
                      width: getScreenWidth() * 0.17,
                      height: CustomSizes.height4 / 3.5,
                    ),
                    CustomButton(
                      text: 'getir',
                      backGroundColor: CustomColors.white,
                      textColor: CustomColors.primary,
                      function: () {},
                      fontWeight: FontWeight.bold,
                      width: getScreenWidth() * 0.17,
                      height: CustomSizes.height4 / 3.5,
                    ),
                    CustomButton(
                      text: 'getir',
                      backGroundColor: CustomColors.white,
                      textColor: CustomColors.primary,
                      function: () {},
                      fontWeight: FontWeight.bold,
                      width: getScreenWidth() * 0.17,
                      height: CustomSizes.height4 / 3.5,
                    ),
                  ]),
                ),
              ),
            ),
            SizedBox(height: CustomSizes.verticalSpace),

            Card(
              margin:EdgeInsets.zero,

              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: CustomSizes.padding8 / 1.5),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: categoryList.length,
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 3 / 6,
                  ),
                  itemBuilder: (context, index) {
                    return productWidget();
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
