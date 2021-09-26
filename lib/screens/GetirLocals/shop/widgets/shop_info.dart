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
      Card(
        margin:EdgeInsets.zero,
        child: Padding(
          padding: EdgeInsets.all(CustomSizes.padding6),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Expanded(
                  flex: 6,
                  child: CustomText(
                      text: widget.shop.name,
                      fontSize: CustomSizes.header4,
                      isCenter: false)),
              const Expanded(
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

            SizedBox(height: CustomSizes.verticalSpace / 2),
            Row(
              children: [
                DeliverTypeCircle(
                  widget: Center(
                      child: Icon(Icons.shopping_bag,
                          color: CustomColors.yellow,
                          size: CustomSizes.iconSize / 1.5)),
                  color: CustomColors.primary,
                  borderColor: CustomColors.primary,
                ),
                SizedBox(
                    width: CustomSizes.horizontalSpace / 2),
                CustomText(
                  text: 'getir',
                  color: CustomColors.primary,
                  fontSize: CustomSizes.header6,
                ),
                CustomText(
                    text: 'delivery ',
                    color:
                    CustomColors.black.withOpacity(0.6),
                    fontSize: CustomSizes.header6),
              ],
            ),
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

            /// RESTAURANT INFO


          ]),
        ),
      ),
      Padding(
        padding:  EdgeInsets.all(CustomSizes.padding5),
        child: Card(
          child: TextField(

            obscureText: true,
            decoration: InputDecoration(
              border: InputBorder.none,

              prefixIcon: Icon(Icons.search,
                  color: CustomColors.primary,
                  size: CustomSizes.iconSizeMedium),
              hintText: 'Search in this store',
              hintStyle: TextStyle(
                  fontSize: CustomSizes.header4,
                  color: CustomColors.black.withOpacity(0.5)),
            ),
          ),
        ),
      ),

      /// SEARCH INPUT FIELD
    ]);
  }
}