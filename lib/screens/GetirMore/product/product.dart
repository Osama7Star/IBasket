import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir_more/product_model.dart';
import 'package:getir_clone/screens/GetirFood/meal/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Product extends StatefulWidget {
  const Product({Key? key,required this.product}) : super(key: key);
  final ProductModel product;

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool isClicked = false;
  int mealsNumber = 0 ;
  int basketTotal=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithIcons(
          context: context, text: 'getirfood', widget: BasketCard(value: basketTotal)),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: CustomSizes.height6),
            child: ListView(children: [
              Card(
                  margin: EdgeInsets.zero,
                  child: Column(
                    children: [
                      Image.network(
                          widget.product.imageUrl,
                          height: getScreenHeight() / 2,
                          fit: BoxFit.fill),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            widget.product.oldPrice>0?  CustomText(
                                text: '₺ ${widget.product.oldPrice}',
                                fontSize: CustomSizes.header5,
                                color: CustomColors.black.withOpacity(0.5),
                                textDecoration: TextDecoration.lineThrough):
                            SizedBox(width:0),
                            SizedBox(width: CustomSizes.padding8),
                            CustomText(
                                text: ' ${widget.product.price}',
                                fontSize: CustomSizes.header3,
                                color: CustomColors.primary),
                          ]),
                      SizedBox(height:CustomSizes.verticalSpace),
                      CustomText(
                          text: widget.product.name,
                          fontSize: CustomSizes.header4,
                          color: CustomColors.black),
                      SizedBox(height:CustomSizes.verticalSpace),

                      CustomText(
                          text: widget.product.smallDetails,
                          fontSize: CustomSizes.header5,
                          color: CustomColors.black.withOpacity(0.5)),
                      SizedBox(height: CustomSizes.verticalSpace),
                    ],
                  )),


              widget.product.details.toString()!='' ?
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  SizedBox(height: CustomSizes.verticalSpace * 2),
                  Padding(
                    padding: EdgeInsets.only(left: CustomSizes.padding5),
                    child: CustomText(
                        text: "Details",
                        fontSize: CustomSizes.header5,
                        color: CustomColors.black.withOpacity(0.5),
                        isCenter: false),
                  ),
                  SizedBox(height: CustomSizes.verticalSpace * 2),
                  Container(
                    width: double.infinity,
                    child: Card(
                      margin: EdgeInsets.zero,
                      child: Padding(
                        padding: EdgeInsets.all(CustomSizes.padding5),
                        child: CustomText(
                            text:widget.product.details,
                            fontSize: CustomSizes.header5,
                            color: CustomColors.black.withOpacity(0.5),
                            isCenter: false),
                      ),
                    ),
                  ),
                ]
              ):SizedBox(width:0),
            ]),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              margin: EdgeInsets.zero,
              child: SizedBox(
                height: CustomSizes.height6,
                child: Padding(
                  padding: EdgeInsets.all(CustomSizes.padding5),
                  child:
                  isClicked && mealsNumber>0?     Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    ContainerIcon(
                        whichBox: 1,
                        widget: Icon(
                          Icons.minimize_sharp,
                          color: CustomColors.primary,
                          size: CustomSizes.iconSize,
                        ),
                        function: () {
                          setState(() {
                            mealsNumber > 0 ? mealsNumber-- : mealsNumber;
                          });
                        }),
                    ContainerIcon(
                        whichBox: 3,
                        isRounded: true,
                        color: CustomColors.primary,
                        widget: CustomText(
                          text: ' ${mealsNumber} ',
                          color: CustomColors.white,
                          fontSize: CustomSizes.header4,
                          fontWeight: FontWeight.bold,
                        ),
                        function: () {}),
                    ContainerIcon(
                        whichBox: 2,
                        widget: Icon(Icons.add,
                            color: CustomColors.primary,
                            size: CustomSizes.iconSize),
                        function: () {
                          setState(() {
                            mealsNumber = mealsNumber + 1;
                          });
                        }),
                  ]):
                  Container(
                    width:double.infinity,
                    child: CustomButton(
                        backGroundColor: CustomColors.primary,
                        textColor: CustomColors.white,
                        fontSize: CustomSizes.header5,
                        text:'Add To Basket',
                        function:(){
                          setState((){
                            isClicked = true;
                            mealsNumber = mealsNumber + 1;
                          });
                        }
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
