import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir_water/water_model.dart';
import 'package:getir_clone/screens/GetirFood/meal/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';
class WaterBox extends StatefulWidget {
  const WaterBox(
      {Key? key,
        this.height,
        this.dividedNumber = 1,
        this.padding = 10,
        this.radius = 15,
        required this.function,
        required this.water})
      : super(key: key);

  final double? height;
  final double dividedNumber;
  final double padding;
  final double radius;

  final Function() function;

  final WaterModel water;

  @override
  State<WaterBox> createState() => _WaterBoxState();
}

class _WaterBoxState extends State<WaterBox> {
  bool isSelected = false;
  int productCounts = 0;
  Color borderColor = CustomColors.black.withOpacity(0.1);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: widget.function,

              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: CustomSizes.padding5,
                        right: CustomSizes.padding2,
                        left: CustomSizes.padding5),
                    child:
                    Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(

                          border: Border.all(
                              color: borderColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Column(
                              children: [
                                widget.height == null
                                    ? SizedBox(
                                  child: Image.network(widget.water.imageUrl),
                                  height:200,
                                  width: getScreenWidth(),
                                )
                                    : SizedBox(
                                  child: Image.network(
                                    widget.water.imageUrl,
                                    fit: BoxFit.fitHeight,
                                    height: 80,
                                  ),
                                )
                              ],
                            ))),


                  ),
                  SizedBox(height: CustomSizes.verticalSpace / widget.dividedNumber),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomText(
                        text: widget.water.oldPrice.toString(),
                        fontSize: CustomSizes.header4 / widget.dividedNumber,
                        color: CustomColors.black.withOpacity(0.5),
                        textDecoration: TextDecoration.lineThrough),
                    SizedBox(width: CustomSizes.padding8),
                    CustomText(
                        text: widget.water.currentPrice.toString(),
                        fontSize: CustomSizes.header3 / widget.dividedNumber,
                        color: CustomColors.primary),
                  ]),
                  SizedBox(height: CustomSizes.verticalSpace / widget.dividedNumber),
                  Padding(
                    padding:  EdgeInsets.only(right:3),
                    child: CustomText(
                        text: widget.water.name,
                        fontSize: CustomSizes.header4 / widget.dividedNumber,
                        color: CustomColors.black,
                    maxLines: 1,),
                  ),
                  SizedBox(height: CustomSizes.verticalSpace / widget.dividedNumber),
                  widget.height == null
                      ? Container(width: 0)
                      : CustomText(
                      text: "12 x 500 ml",
                      fontSize: CustomSizes.header5 / widget.dividedNumber,
                      color: CustomColors.black.withOpacity(0.5),
                      isCenter: false)
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: isSelected && productCounts > 0
                  ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContainerIcon1(
                        whichBox: 1,
                        paddingValue: CustomSizes.padding8,

                        widget: Icon(Icons.add,
                            color: CustomColors.primary,
                            size: CustomSizes.iconSize),
                        function: () {
                          setState(() {
                            productCounts = productCounts + 1;
                          });
                        }),
                    ContainerIcon1(
                        whichBox: 3,
                        isRounded: true,
                        color: CustomColors.primary,
                        paddingValue: CustomSizes.padding6,
                        widget: CustomText(
                          text: ' ${productCounts} ',
                          color: CustomColors.white,
                          fontSize: CustomSizes.header7,
                          fontWeight: FontWeight.bold,

                        ),
                        function: () {}),

                    ContainerIcon1(
                        whichBox: 2,
                        paddingValue: CustomSizes.padding8,

                        widget: Icon(
                          Icons.minimize_sharp,
                          color: CustomColors.primary,
                          size: CustomSizes.iconSize,
                        ),
                        function: () {
                          setState(() {
                            productCounts > 0 ? productCounts-- : productCounts;
                            if (productCounts==0)
                            {
                              borderColor = CustomColors.black.withOpacity(0.1);
                            }


                          });
                        }),
                  ]) :
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSelected = true;
                    productCounts = productCounts + 1;
                    borderColor = CustomColors.primary.withOpacity(1);
                  });
                },
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
                        color: CustomColors.primary)),
              )
              ,
            )
          ],
        ),
      ],
    );
  }
}
