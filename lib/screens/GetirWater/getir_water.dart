import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir_water/water_model.dart';
import 'package:getir_clone/models/getir_food/restaurants_model.dart';
import 'package:getir_clone/screens/Getir/widgets/widgets.dart';
import 'package:getir_clone/screens/GetirFood/meal/widgets/widgets.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/resturants_widget.dart';
import 'package:getir_clone/screens/GetirFood/resturant_details/resturant_details.dart';
import 'package:getir_clone/screens/GetirWater/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/bottom_bar.dart';
import 'package:getir_clone/screens/custome_widgets/slider.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/promotions/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

import 'detail_page.dart';

class GetirWater extends StatelessWidget {
  const GetirWater({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(context: context, text: 'getir',text2: 'water'),
        body: ListView(
          children: [
            const AddressBar(),
            const CustomSlider(),

             MainCategories(pageNumber:3),
            Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding:  EdgeInsets.all(CustomSizes.padding5),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: waterList.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return  WaterBox(
                          function: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailPage(water:waterList[index] ,)),
                            );
                          },
                          water: waterList[index]);
                    }),
              ),
            ),
            Card(
              margin:EdgeInsets.zero,
              child: Padding(
                padding:  EdgeInsets.all(CustomSizes.padding5),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: waterList.length,
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 7,
                    childAspectRatio: (3 / 5),
                  ),
                  itemBuilder: (context, index) {
                    return WaterBox(
                        height: 200,
                        dividedNumber: 1.3,
                        padding: 4,
                        radius: 5,
                        water: waterList[index],
                        function: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailPage(water:waterList[index] )),
                          );
                        });
                  },
                ),
              ),
            )
          ],
        ),
      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.home),);
  }
}

