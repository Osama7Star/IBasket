import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/home/widgets/widgets.dart';
import 'package:getir_clone/screens/resturants/widgets/cusines.dart';
import 'package:getir_clone/screens/resturants/widgets/resturants_widget.dart';
import 'package:getir_clone/screens/resturants/widgets/returants_small.dart';
import 'package:getir_clone/screens/resturants/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isVertical = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: CustomAppBar(context, 'GetirYemek'),
        body: ListView(
          children: [
            const AddressBar(),
            Image.network(
              'https://cdn.getir.com/misc/611e4a50c270af509cd486b5_banner_en_1629375136600.jpeg',
            ),
            const MainCategories(),
            SizedBox(height:CustomSizes.verticalSpace),
            Card(
              child: Container(

                  margin: EdgeInsets.symmetric(horizontal: CustomSizes.padding1),
                  padding:EdgeInsets.all(CustomSizes.padding5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color:CustomColors.white1,
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const ChoicesWidget(text: 'Filtrele',icon: Icons.filter_alt_sharp,),
                      Container(
                        height: CustomSizes.height5/4,
                        width: 1.0,
                        color: CustomColors.black.withOpacity(0.3),
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      ),
                      const ChoicesWidget(text: 'Sırala',icon: Icons.sort_sharp),

                    ]
                  )



              ),


            ),
            SizedBox(height:CustomSizes.verticalSpace),

            titleandshowall(
                text: "Mudavim resturants",
                text2: "Show All (103)",
                function: () {}),
            SizedBox(height:CustomSizes.verticalSpace),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: const [
                Restaurants(),
                Restaurants(),
                Restaurants(),
                Restaurants(),
                Restaurants(),
                Restaurants(),
                Restaurants(),
                Restaurants(),
              ]),
            ),
            titleandshowall(
                text: "Special Offers",
                text2: "Show All (15)",
                function: () {}),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: const [
                Restaurants(),
                Restaurants(),
                Restaurants(),
                Restaurants(),
                Restaurants(),
                Restaurants(),
                Restaurants(),
                Restaurants(),
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
            SizedBox(height: CustomSizes.verticalSpace * 2),

            /// ALL RESTURANTS
            Padding(
              padding: EdgeInsets.symmetric(horizontal: CustomSizes.padding5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    titleandshowall(
                        text: "All Resturants (780)", function: () {}),
                    Row(children: [
                      IconButton(
                          icon: Icon(
                            Icons.panorama_vertical,
                            color: CustomColors.primary,
                            size: CustomSizes.iconSizeMedium,
                          ),
                          onPressed: () {
                            setState(() {
                              isVertical = true;
                            });
                          }),
                      SizedBox(width: CustomSizes.horizontalSpace),
                      IconButton(
                          icon: Icon(
                            Icons.panorama_horizontal,
                            color: CustomColors.primary,
                            size: CustomSizes.iconSizeMedium,
                          ),
                          onPressed: () {
                            setState(() {
                              isVertical = false;
                            });
                          }),
                    ])
                  ]),
            ),

            isVertical
                ? SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(children: const [
                      Restaurants(isFullScreen: true),
                      Restaurants(isFullScreen: true),
                      Restaurants(isFullScreen: true),
                      Restaurants(isFullScreen: true),
                      Restaurants(isFullScreen: true),
                      Restaurants(isFullScreen: true),
                      Restaurants(isFullScreen: true),
                      Restaurants(isFullScreen: true),
                    ]),
                  )
                : SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(children: const [
                      ResturantsSmall(),
                      ResturantsSmall(),
                      ResturantsSmall(),
                      ResturantsSmall(),
                      ResturantsSmall(),
                      ResturantsSmall(),
                      ResturantsSmall(),
                    ]),
                  ),
          ],
        ));
  }




}



