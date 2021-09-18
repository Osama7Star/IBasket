import 'package:flutter/material.dart';
import 'package:getir_clone/models/category_model.dart';
import 'package:getir_clone/screens/Getir/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/promotions/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class GetirWater extends StatelessWidget {
  const GetirWater({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(context: context, text: 'getirWater'),
        body: ListView(
          children: [
            const AddressBar(),
            Image.network(
              'https://cdn.getir.com/misc/611e4a50c270af509cd486b5_banner_en_1629375136600.jpeg',
            ),
            const MainCategories(),
            SingleChildScrollView(
              child: Column(
                children:[
                  WaterBox(),
                  WaterBox(),
                  WaterBox(),
                  WaterBox(),
                  WaterBox(),
                  WaterBox(),

                ]
              ),
            ),

      GridView.builder(
      shrinkWrap: true,
      itemCount: categoryList.length,
      primary: false,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        childAspectRatio: (3 / 5),
      ),
      itemBuilder: (context, index) {
        return WaterBox(height: 200,dividedNumber:1.3,padding: 3,radius:5);
      },
    )
          ],
        ));
  }
}

class WaterBox extends StatelessWidget {
  const WaterBox({
    Key? key, this.height, this.dividedNumber=1, this.padding=10, this.radius=15,
  }) : super(key: key);

  final double? height;
  final double dividedNumber;
  final double padding;
  final double radius ;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top:CustomSizes.padding5,right:CustomSizes.padding2,left:CustomSizes.padding5),
                  child: Container(

                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: CustomColors.black.withOpacity(0.1)),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Column(
                            children: [
                              height==null?  SizedBox(

                                child: Image.network(
                                    'https://cdn.getir.com/promos/5fe8729946cc25eb1ffa6c81_banner_tr_1613559009623.jpeg'),
                              ):
                              SizedBox(

                                child: Image.network(
                                    'https://cdn.getir.com/product/603545c9877ea1efbab7dc90_tr_1630062624863.jpeg',
                                  fit:BoxFit.fitHeight,
                                  height:80,

                                ),

                              )

                            ],
                          ))),
                ),
               SizedBox(height:CustomSizes.verticalSpace/dividedNumber),
               Row(
                   mainAxisAlignment:
                   MainAxisAlignment.center,
                   children: [
                     CustomText(
                         text: "₺10.95",
                         fontSize: CustomSizes.header4/dividedNumber,
                         color: CustomColors.black
                             .withOpacity(0.5),
                         textDecoration:
                         TextDecoration.lineThrough),
                     SizedBox(width: CustomSizes.padding8),
                     CustomText(
                         text: "₺8,59",
                         fontSize: CustomSizes.header3/dividedNumber,
                         color: CustomColors.primary),
                   ]),
                SizedBox(height:CustomSizes.verticalSpace/dividedNumber),


                CustomText(
                   text: "Kuzeyden Su 19 L - Damacana iadali X3",
                   fontSize: CustomSizes.header5/dividedNumber,
                   color: CustomColors.black),
                SizedBox(height:CustomSizes.verticalSpace/dividedNumber),

               height==null?
               Container(width:0):
               CustomText(
                   text: "12 x 500 ml",
                   fontSize: CustomSizes.header5/dividedNumber,
                   color: CustomColors.black.withOpacity(0.5),
               isCenter:false)
              ],
            ),
            Positioned(
                right: CustomSizes.padding5,
                child: IconInContainer(icon: Icons.add,iconSize: CustomSizes.iconSize/dividedNumber,padding: padding,radius:radius)),
          ],
        ),
      ],
    );
  }
}
