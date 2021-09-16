import 'package:flutter/material.dart';
import 'package:getir_clone/screens/GetirMore/product/product.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';


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

class productWidget extends StatelessWidget {
  const productWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()
      {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Product()),
        );
      },
      child: Column(
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
      ),
    );
  }
}

