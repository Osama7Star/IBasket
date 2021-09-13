import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class DiscountBannerWidget extends StatelessWidget {
  const DiscountBannerWidget({
    Key? key,required this.text, required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(CustomSizes.padding5),
      child: Container(
          color: CustomColors.yellow,
          child: Padding(
            padding: EdgeInsets.all(CustomSizes.padding8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: CustomColors.primary,
                  size: CustomSizes.iconSize,
                ),
                SizedBox(width: CustomSizes.horizontalSpace),
                 CustomText(
                  text: text,
                  color: CustomColors.primary,
                   fontWeight:FontWeight.bold
                ),
              ],
            ),
          )),
    );
  }
}

class SideMealWidget extends StatelessWidget {
  const SideMealWidget({
    Key? key,
    required this.text,
    required this.price,
  }) : super(key: key);

  final String text;

  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreenWidth(),
      child: Padding(
        padding: EdgeInsets.all(CustomSizes.padding6),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomText(text: text),
          SizedBox(height: CustomSizes.verticalSpace),
          CustomText(
              text: '₺ ${price}',
              color: CustomColors.primary,
              fontSize: CustomSizes.header4),
          const Divider(),
        ]),
      ),
    );
  }
}

class MealsWidget extends StatelessWidget {
  const MealsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(CustomSizes.padding6),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: "Çiğ Köfte Dürüm (120 g)",
                          fontWeight: FontWeight.bold,
                          fontSize: CustomSizes.header4,
                          color: CustomColors.black.withOpacity(0.7)),
                      SizedBox(height: CustomSizes.verticalSpace),
                      CustomText(
                          text: "Göbek marul maydanoa limon domates  Göbek marul maydanoa limon domatesGöbek marul maydanoa limon domatesGöbek marul maydanoa limon domates",
                          fontSize: CustomSizes.header5,
                          color: CustomColors.black.withOpacity(0.5),
                          isCenter:false),
                      SizedBox(height: CustomSizes.verticalSpace),
                      CustomText(
                          text: "₺ 120",
                          color: CustomColors.primary,
                          fontSize: CustomSizes.header4),
                    ]),
              ),
              SizedBox(width: CustomSizes.verticalSpace),
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://cdn.getiryemek.com/cuisines/1619220143647_480x300.jpeg",
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
