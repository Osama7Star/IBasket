import 'package:flutter/material.dart';
import 'package:getir_clone/screens/GetirMore/home/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/bottom_bar.dart';
import 'package:getir_clone/screens/custome_widgets/slider.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/Getir/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: CustomColors.white2,
        appBar:CustomAppBar(context: context, text:'getir',text2: 'more'),
        body:ListView(
          children: [
            const AddressBar(),

            SizedBox(
              height: getScreenHeight()-220,

              child: ListView(
                  children:[
                    const CustomSlider(),


                     MainCategories(pageNumber:2),
                    Padding(
                      padding:  EdgeInsets.all(CustomSizes.padding5),
                      child: const CategoryList(),
                    ),
                  ]
              ),
            ),
          ],
        ),
     bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.home),);


  }
}


