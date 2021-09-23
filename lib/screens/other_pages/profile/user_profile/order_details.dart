import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir_more/product_model.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/user_profile/previous_order.dart';
import 'package:getir_clone/screens/other_pages/profile/user_profile/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: CustomAppBarWithIcons(
            context: context,
            text: 'Basket',
            color: CustomColors.white,
            fontSize: CustomSizes.header4,
            widget: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.delete),
            )),
        body: ListView(children: [
          PreviousOrderWidget(),
          SizedBox(height: CustomSizes.verticalSpace * 2),

          /// COURIER INFORMATION

          Padding(
            padding: EdgeInsets.only(left: CustomSizes.padding5),
            child: CustomText(
                text: "Courier",
                color: CustomColors.blackWithOpacity,
                fontSize: CustomSizes.header5,
                isCenter: false),
          ),
          SizedBox(height: CustomSizes.verticalSpace * 2),
          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: CustomSizes.padding5,
                  vertical: CustomSizes.padding1),
              child: Row(children: [
                SizedBox(
                    width: CustomSizes.height7,
                    height: CustomSizes.height7,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                            'http://cdn.getir.com/person/60bb33e7efffe702c9c528e5.png?1622881399477'))),
                SizedBox(width: CustomSizes.verticalSpace * 2),
                CustomText(
                    text: "Barış ",
                    color: CustomColors.black,
                    fontSize: CustomSizes.header4,
                    isCenter: false),
              ]),
            ),
          ),

          ///END COURIER INFORMATION
          SizedBox(height: CustomSizes.verticalSpace * 2),

          /// RATING
          Padding(
            padding: EdgeInsets.only(left: CustomSizes.padding5),
            child: CustomText(
                text: "Rate your experience",
                color: CustomColors.blackWithOpacity,
                fontSize: CustomSizes.header5,
                isCenter: false),
          ),
          SizedBox(height: CustomSizes.verticalSpace * 2),

          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: CustomSizes.padding5,
                  vertical: CustomSizes.padding3),
              child: RatingBarIndicator(
                rating: 8.2,
                itemCount: 5,
                itemSize: 30.0,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: CustomColors.blackWithOpacity,
                ),
              ),
            ),
          ),
          SizedBox(height: CustomSizes.verticalSpace * 2),

          /// END RATING

          /// BASKET
          Padding(
            padding: EdgeInsets.only(left: CustomSizes.padding5),
            child: CustomText(
                text: "Basket",
                color: CustomColors.blackWithOpacity,
                fontSize: CustomSizes.header5,
                isCenter: false),
          ),
          SizedBox(height: CustomSizes.verticalSpace * 2),


          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: productList.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return PreviousOrderBasket(product:productList[index]);
              }),

          /// END BASKET

          SizedBox(height: CustomSizes.verticalSpace * 2),

          /// PAYMENT DETAILS
          Padding(
            padding: EdgeInsets.only(left: CustomSizes.padding5),
            child: CustomText(
                text: "Payment Details",
                color: CustomColors.blackWithOpacity,
                fontSize: CustomSizes.header5,
                isCenter: false),
          ),
          SizedBox(height: CustomSizes.verticalSpace * 2),

          PaymentDetailsWidget(
            widget1: CustomText(
              text: 'Total',
              color: CustomColors.blackWithOpacity,
              fontSize: CustomSizes.header5,
              isCenter: false,
            ),
            widget2: CustomText(
              text: '₺23:43',
              color: CustomColors.blackWithOpacity,
              fontSize: CustomSizes.header5,
              isCenter: false,
              textDecoration: TextDecoration.lineThrough,
            ),
          ),
          PaymentDetailsWidget(
            widget1: CustomText(
              text: 'You Saved',
              color: CustomColors.primary,
              fontSize: CustomSizes.header4,
              isCenter: false,
            ),
            widget2: CustomText(
              text: '₺18.45',
              color: CustomColors.primary,
              fontSize: CustomSizes.header4,
              isCenter: false,
            ),
          ),
          PaymentDetailsWidget(
            widget1: CustomText(
              text: 'Subtotal',
              color: CustomColors.blackWithOpacity,
              fontSize: CustomSizes.header5,
              isCenter: false,
            ),
            widget2: CustomText(
              text: '₺5',
              color: CustomColors.blackWithOpacity,
              fontSize: CustomSizes.header5,
              isCenter: false,
            ),
          ),
          PaymentDetailsWidget(
            widget1: CustomText(
              text: 'Delivery Fee',
              color: CustomColors.blackWithOpacity,
              fontSize: CustomSizes.header5,
              isCenter: false,
            ),
            widget2: CustomText(
              text: '₺23:43',
              color: CustomColors.blackWithOpacity,
              fontSize: CustomSizes.header5,
              isCenter: false,
            ),
          ),
          PaymentDetailsWidget(
            widget1: CustomText(
              text: 'Bag Fee',
              color: CustomColors.blackWithOpacity,
              fontSize: CustomSizes.header5,
              isCenter: false,
            ),
            widget2: CustomText(
              text: '₺0.25',
              color: CustomColors.blackWithOpacity,
              fontSize: CustomSizes.header5,
              isCenter: false,
            ),
          ),
          PaymentDetailsWidget(
            widget1: CustomText(
              text: 'Chagre Amount',
              color: CustomColors.primary,
              fontSize: CustomSizes.header4,
              isCenter: false,
            ),
            widget2: CustomText(
              text: '₺0.25',
              color: CustomColors.primary,
              fontSize: CustomSizes.header4,
              isCenter: false,
            ),
          ),

          Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
                Card(
                  elevation:10,
                  child: Padding(
                    padding: EdgeInsets.all(CustomSizes.padding5),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/2560px-Mastercard-logo.svg.png',
                        height: CustomSizes.height8,
                      width:CustomSizes.height8
                    ),
                  ),
                ),
                Column(children: [
                  CustomText(
                    text: 'Osama Alnajm',
                    color: CustomColors.black,
                    fontSize: CustomSizes.header4,
                    isCenter: false,
                  ),
                  CustomText(
                    text: '531985*********17',
                    color: CustomColors.blackWithOpacity,
                    fontSize: CustomSizes.header4,
                    isCenter: false,
                  ),
                ]),
                Image.network(
                    'https://www.masterpassturkiye.com/files/01.png',
                    height: CustomSizes.height7,
                    width:CustomSizes.height5
                ),
            ],
          ),
              ))
        ]));
  }
}



class PreviousOrderBasket extends StatelessWidget {
  const PreviousOrderBasket({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: EdgeInsets.all(CustomSizes.padding5),
        child: Row(children: [
          Expanded(
              flex: 2,
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: CustomColors.black.withOpacity(0.1),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      )),
                  child: Image.network(
                      product.imageUrl))),
          SizedBox(width: CustomSizes.verticalSpace),
          Expanded(
            flex: 4,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomText(
                  text: product.name,
                  color: CustomColors.black,
                  fontSize: CustomSizes.header5,
                  isCenter: false),
              CustomText(
                  text: "₺ ${product.price}",
                  color: CustomColors.primary,
                  fontSize: CustomSizes.header5,
                  isCenter: false),
            ]),
          ),
          Expanded(
            flex: 1,
            child: DeliverTypeCircle(
                color: CustomColors.primary.withOpacity(0.2),
                widget: const CustomText(
                    text: "1",
                    color: CustomColors.primary,
                    fontWeight: FontWeight.bold)),
          ),
        ]),
      ),
    );
  }
}
