import 'package:flutter/material.dart';
import 'package:getir_clone/models/category_model.dart';
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
                      text: 'getir',
                      backGroundColor: CustomColors.primary,
                      textColor: CustomColors.white,
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

class productWidget extends StatelessWidget {
  const productWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 160,
          height: 160,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: CustomColors.black.withOpacity(0.1)),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    )),
                child: Image.network(
                    'https://cdn.getir.com/product/61289033a973a10130fdf5e8_tr_1630076167399.jpeg'),
              ),
              Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                      padding: EdgeInsets.all(CustomSizes.padding8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: CustomColors.black.withOpacity(0.1)),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(3),
                          )),
                      child: Icon(Icons.add,
                          size: CustomSizes.iconSize,
                          color: CustomColors.primary)))
            ],
          ),
        ),
        SizedBox(height: CustomSizes.verticalSpace / 2),
        CustomText(
            text: '₺ 6.69',
            fontSize: CustomSizes.header3,
            color: CustomColors.primary),
        CustomText(
            text: 'Dried Strawberry',
            fontSize: CustomSizes.header5,
            color: CustomColors.black),
        CustomText(
            text: '18',
            fontSize: CustomSizes.header6,
            color: CustomColors.black.withOpacity(0.5)),
      ],
    );
  }
}

class CategoryWithUnderLine extends StatelessWidget {
  const CategoryWithUnderLine({Key? key, this.isSelected = false})
      : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(CustomSizes.padding2),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              width: 4.0,
              color: isSelected ? CustomColors.yellow : CustomColors.primary),
        ),
        color: CustomColors.primary,
      ),
      child: CustomText(
          text: 'Dried Strawberry',
          fontSize: CustomSizes.header5,
          color: CustomColors.white),
    );
  }
}
