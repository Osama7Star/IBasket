import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/resturants/widgets/cusines.dart';
import 'package:getir_clone/screens/resturants/widgets/resturants_widget.dart';
import 'package:getir_clone/screens/resturants/widgets/returants_small.dart';
import 'package:getir_clone/screens/resturants/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: CustomAppBar(context, 'resturant'),
        body: ListView(
          children: [
            titleandshowall(
                text: "Mudavim resturants",
                text2: "Show All (103)",
                function: () {}),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: const [
                resturants(),
                resturants(),
                resturants(),
                resturants(),
                resturants(),
                resturants(),
                resturants(),
                resturants(),
              ]),
            ),
            titleandshowall(
                text: "Special Offers",
                text2: "Show All (15)",
                function: () {}),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: const [
                resturants(),
                resturants(),
                resturants(),
                resturants(),
                resturants(),
                resturants(),
                resturants(),
                resturants(),
              ]),
            ),
            const CustomText(text: ""),
            titleandshowall(text: "Cuisines", function: () {}),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: const [
                Cuisines(),
                Cuisines(),
                Cuisines(),
                Cuisines(),
                Cuisines(),
                Cuisines(),
              ]),
            ),
            SizedBox(height: CustomSizes.verticalSpace*2),

            /// ALL RESTURANTS
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:CustomSizes.padding5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  titleandshowall(text: "All Resturants (780)", function: () {}),

                  Row(

                      children:[
                      Icon(
                        Icons.panorama_vertical,
                        color: CustomColors.primary,
                        size: CustomSizes.iconSizeMedium,
                      ),
                      SizedBox(width:CustomSizes.horizontalSpace),
                      Icon(
                        Icons.panorama_horizontal,
                        color: CustomColors.primary,
                        size: CustomSizes.iconSizeMedium,
                      ),
                    ]
                  )
                ]
              ),
            ),


            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: const [
                resturants(isFullScreen:true),
                resturants(isFullScreen:true),
                resturants(isFullScreen:true),
                resturants(isFullScreen:true),
                resturants(isFullScreen:true),
                resturants(isFullScreen:true),
                resturants(isFullScreen:true),
                resturants(isFullScreen:true),

              ]),
            ),
            const ResturantsSmall()
          ],
        ));
  }
}
