import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir_more/product_model.dart';
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
    Key? key, required this.product,
  }) : super(key: key);

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()
      {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Product(product: product,)),
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
                      product.imageUrl),
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

          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                product.oldPrice>0?  CustomText(
                    text: "₺10.95",
                    fontSize: CustomSizes.header5,
                    color: CustomColors.black.withOpacity(0.5),
                    textDecoration: TextDecoration.lineThrough):
                SizedBox(width:0),
                SizedBox(width: CustomSizes.padding8),
                CustomText(
                    text: '₺ ${product.price}',
                    fontSize: CustomSizes.header3,
                    color: CustomColors.primary),
              ]),
          CustomText(
              text:product.name,
              fontSize: CustomSizes.header7,
              color: CustomColors.black,
          maxLines: 1,
          isCenter:false),
          CustomText(
              text: '18',
              fontSize: CustomSizes.header6,
              color: CustomColors.black.withOpacity(0.5)),
        ],
      ),
    );
  }
}

