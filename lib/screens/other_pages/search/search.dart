import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:getir_clone/models/category_model.dart';
import 'package:getir_clone/screens/GetirMore/products/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/bottom_bar.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/search/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);



  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool showData = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset:false,
        appBar: CustomAppBar(
            context: context,
            text: 'Search',
            color: CustomColors.white,
            fontSize: CustomSizes.header4),
        body: SizedBox(
          height:getScreenHeight()-150,
          child: ListView(children: [

            ///TODO: SEND DATA FROM SON TO PARENT
            InputFieldW(showData:showData),
            showData?Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:[
                Padding(
                  padding:  EdgeInsets.all(CustomSizes.padding5),
                  child: CustomText(
                      text: 'Arama Sonucu',
                      fontSize: CustomSizes.header5,
                      color: CustomColors.black.withOpacity(0.5),
                      isCenter: false),
                ),

                Card(
                  margin:EdgeInsets.zero,

                  child: Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: CustomSizes.padding8 / 1.5),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: categoryList.length,
                      primary: false,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 3 / 6,
                      ),
                      itemBuilder: (context, index) {
                        return productWidget();
                      },
                    ),
                  ),
                ),
              ]
            ):Container(width:0),
          ]),
        ),
     bottomNavigationBar:  CustomBottomNavBar(selectedMenu: MenuState.search));
  }
}
