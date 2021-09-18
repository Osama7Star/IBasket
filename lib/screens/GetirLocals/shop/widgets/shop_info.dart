import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir_locals/shop_model.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/screens/GetirFood/resturant_details/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';
class ShopInfo extends StatefulWidget {
  const ShopInfo({Key? key, required this.shop}) : super(key: key);

  final ShopModel shop;

  @override
  State<ShopInfo> createState() => _ShopInfoState();
}

class _ShopInfoState extends State<ShopInfo> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          height: getScreenHeight() * 0.3,
          width: getScreenWidth(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(widget.shop.image),
                  fit: BoxFit.cover)),
          child: Stack(children: [
            const DiscountBannerWidget(
                text: "20 TL discount",
                icon: Icons.account_balance_wallet_rounded),
            Positioned(
                right: CustomSizes.padding5,
                top: CustomSizes.padding5,
                child: isFavorite
                    ? IconButton(
                  icon: Icon(Icons.favorite),
                  color: CustomColors.primary,
                  iconSize: CustomSizes.iconSizeMedium,
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                )
                    : IconButton(
                  icon: Icon(Icons.favorite),
                  color: CustomColors.black,
                  iconSize: CustomSizes.iconSizeMedium,
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                )),
          ])),

      /// RESTAURANT IMAGE
      Padding(
        padding: EdgeInsets.all(CustomSizes.padding6),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
                flex: 6,
                child: CustomText(
                    text: widget.shop.name,
                    fontSize: CustomSizes.header4,
                    isCenter: false)),
            Expanded(
              flex: 2,
              child: RestaurantsReviewWidget(
                  review: 3.4, restaurantsNumber: 200, icon: Icons.star),
            ),
          ]),
          SizedBox(height: CustomSizes.verticalSpace),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            CustomText(
              text: 'Çiğ Köfte ',
              fontSize: CustomSizes.header5,
              color: CustomColors.black.withOpacity(0.5),
            ),
            CustomText(
              text: 'Favorite Local Bites ',
              fontSize: CustomSizes.header5,
              color: CustomColors.black.withOpacity(0.5),
            ),
            CustomText(
              text: 'Closing 23:00 ',
              fontSize: CustomSizes.header5,
              color: CustomColors.black.withOpacity(0.5),
            ),
          ]),
          SizedBox(height: CustomSizes.verticalSpace / 2),
          const Divider(),
          SizedBox(height: CustomSizes.verticalSpace / 2),
          Row(children: [
            DeliverTypeCircle(
              color: CustomColors.grey,
              widget: Icon(
                Icons.shopping_bag,
                color: CustomColors.white,
                size: CustomSizes.iconSize / 1.5,
              ),
            ),
            SizedBox(width: CustomSizes.verticalSpace),
            CustomText(
                text: "Only Restaurant delivert option is available.",
                color: CustomColors.black.withOpacity(0.5))
          ]),
          SizedBox(height: CustomSizes.verticalSpace / 2),
          Row(children: [
            const DeliverTypeCircle(
                color: CustomColors.green,
                widget: CustomText(
                    text: "R",
                    color: CustomColors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(width: CustomSizes.verticalSpace),
            const CustomText(text: "Restaurant ", color: CustomColors.green),
            CustomText(
                text: " delivery", color: CustomColors.black.withOpacity(0.5)),
          ]),
          SizedBox(height: CustomSizes.verticalSpace),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            CustomText(
                text: "30-40 min ", color: CustomColors.black.withOpacity(0.5)),
            CustomText(text: "* ", color: CustomColors.black.withOpacity(0.5)),
            CustomText(
                text: "Free Delivery",
                color: CustomColors.black.withOpacity(0.5)),
            CustomText(text: "* ", color: CustomColors.black.withOpacity(0.5)),
            CustomText(
                text: "Min.  ₺ 15.00 ",
                color: CustomColors.black.withOpacity(0.5)),
          ]),
          SizedBox(height: CustomSizes.verticalSpace),
          const Divider(),
          SizedBox(height: CustomSizes.verticalSpace),

          /// RESTAURANT INFO

          Card(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search,
                    color: CustomColors.primary,
                    size: CustomSizes.iconSizeMedium),
                hintText: 'What are you craving?',
                hintStyle: TextStyle(
                    fontSize: CustomSizes.header4,
                    color: CustomColors.black.withOpacity(0.5)),
              ),
            ),
          ),
        ]),
      ),

      /// SEARCH INPUT FIELD
    ]);
  }
}