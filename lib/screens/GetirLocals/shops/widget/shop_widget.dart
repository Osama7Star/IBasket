import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir_locals/shop_model.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class ShopWidget extends StatefulWidget {
  const ShopWidget({
    Key? key,
    this.isFullScreen = false,
    required this.shop,
    required this.function,
  }) : super(key: key);

  final bool isFullScreen;
  final ShopModel shop;
  final Function() function;

  @override
  State<ShopWidget> createState() => _ShoptWidgetState();
}

class _ShoptWidgetState extends State<ShopWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          GestureDetector(
            onTap: widget.function,
            child: Padding(
              padding: EdgeInsets.all(CustomSizes.padding5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                            width: widget.isFullScreen
                                ? getScreenWidth()
                                : getScreenWidth() * 0.8,
                            height: CustomSizes.height5 * 1.3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(widget.shop.image),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  right:10,
                                  bottom:10,
                                  child:
                                  widget.shop.open?  Container(
                                      padding:EdgeInsets.all(CustomSizes.padding8),
                                      decoration:BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),

                                        color:CustomColors.red,

                                      ),
                                      child:CustomText(text:'Closed',color:CustomColors.white,fontSize: CustomSizes.header5,)
                                    ):
                                      Container(width:0),
                                ),
                                isFavorite
                                    ? Positioned(
                                        top: 0,
                                        right: 0,
                                        child: IconButton(
                                          icon: Icon(Icons.favorite),
                                          color: CustomColors.primary,
                                          iconSize: CustomSizes.iconSizeMedium,
                                          onPressed: () {
                                            setState(() {
                                              isFavorite = !isFavorite;
                                            });
                                          },
                                        ),
                                      )
                                    : Positioned(
                                        top: 0,
                                        right: 0,
                                        child: IconButton(
                                          icon: Icon(Icons.favorite),
                                          color: CustomColors.black,
                                          iconSize: CustomSizes.iconSizeMedium,
                                          onPressed: () {
                                            setState(() {
                                              isFavorite = !isFavorite;
                                            });
                                          },
                                        ),
                                      ),
                                Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: CustomColors.white,
                                      ),
                                      padding: EdgeInsets.all(
                                          CustomSizes.padding6 / 2),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: CustomColors.primary,
                                          size: CustomSizes.iconSize / 1.3,
                                        ),
                                        CustomText(
                                            text: widget.shop.rating.toString(),
                                            color: CustomColors.primary,
                                            fontSize: CustomSizes.header5,
                                            fontWeight: FontWeight.bold),
                                        CustomText(
                                            text: ' (200+)',
                                            color:
                                                CustomColors.blackWithOpacity,
                                            fontSize: CustomSizes.header6),
                                      ]),
                                    ))
                              ],
                            )),
                        widget.shop.open
                            ? Container(
                                width: widget.isFullScreen
                                    ? getScreenWidth()
                                    : getScreenWidth() * 0.8,
                                height: CustomSizes.height5 * 1.3,
                                color: CustomColors.white.withOpacity(0.6),
                                child: Text(''))
                            :Container(width:0),
                      ],
                    ),

                    /// RESTAURNT INFO (NAME , DELIVER OPTION , DELIVERY TIME , MINIMUM)
                    SizedBox(height: CustomSizes.verticalSpace),
                    CustomText(
                        text: widget.shop.name,
                        fontWeight: FontWeight.bold,
                        fontSize: CustomSizes.header4),

                    SizedBox(height: CustomSizes.verticalSpace),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
