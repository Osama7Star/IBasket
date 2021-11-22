import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/bottom_bar.dart';
import 'package:getir_clone/screens/custome_widgets/slider.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/Getir/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';
import 'widgets/categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        extendBody: true,

        backgroundColor: CustomColors.white2,
      appBar: CustomAppBar(context: context, text: 'getir'),
      body:
      SingleChildScrollView(
        child: Column(
            children:[
            AddressBar(),
        SizedBox(
          height: getScreenHeight()-200,
         // height: 1000,

          child: ListView(
              children: [
                const CustomSlider(),
                MainCategories(pageNumber: 0),
                Padding(
                    padding: EdgeInsets.all(CustomSizes.padding5),
                    child: const CategoriesList(),)
                    ]

                ),
        ),
            ]
        ),
      ) ,
        bottomNavigationBar:
        const CustomBottomNavBar(selectedMenu: MenuState.home)
      );
  }
}
