import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:getir_clone/models/category_model.dart';
import 'package:getir_clone/models/getir_more/product_model.dart';
import 'package:getir_clone/screens/GetirMore/products/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/bottom_bar.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
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
  TextEditingController controller = new TextEditingController();
  IconData passwordSuffixIcon = Icons.mic;
  String searchWord='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
            context: context,
            text: 'Search',
            color: CustomColors.white,
            fontSize: CustomSizes.header4),
        body: SizedBox(
          height: getScreenHeight() - 150,
          child: ListView(children: [
            ///TODO: SEND DATA FROM SON TO PARENT
            Card(
                margin: EdgeInsets.zero,
                child: InputFieldW(
                  showData: showData,
                  controller: controller,
                  function: () {
                    if (controller.text.isNotEmpty) {
                      setState(() {
                        showData = true;
                        passwordSuffixIcon = Icons.close;
                      });
                    }
                  },
                  function1: () {
                    controller.text = '';
                    setState(() {
                      showData = false;
                      passwordSuffixIcon = Icons.mic;
                    });
                  },
                  passwordSuffixIcon: passwordSuffixIcon,
                )),
            showData
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Padding(
                          padding: EdgeInsets.all(CustomSizes.padding5),
                          child: CustomText(
                              text: 'Arama Sonucu',
                              fontSize: CustomSizes.header5,
                              color: CustomColors.black.withOpacity(0.5),
                              isCenter: false),
                        ),
                        Card(
                          margin: EdgeInsets.zero,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: CustomSizes.padding8 / 1.5),
                            child: GridView.builder(
                              shrinkWrap: true,
                              itemCount: productList.length,
                              primary: false,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                childAspectRatio: 3 / 6.2,
                              ),
                              itemBuilder: (context, index) {
                                return productWidget(
                                  product: productList[index],
                                );
                              },
                            ),
                          ),
                        ),
                      ])
                :

            SizedBox(height:CustomSizes.verticalSpace*3),
            Padding(
              padding:  EdgeInsets.only(left:CustomSizes.padding5),
              child: CustomText(text:'Popular Search',isCenter:false,color: CustomColors.blackWithOpacity,),
            ),
            SizedBox(height:CustomSizes.verticalSpace*2),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding:  EdgeInsets.all(CustomSizes.padding5),
                  child: Row(children: [
                    Padding(
                      padding:  EdgeInsets.only(right:CustomSizes.padding5),
                      child: CustomButton(
                          text: 'water',
                          textColor: CustomColors.primary,
                          function: () {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: CustomButton(
                          text: 'ice cream',
                          textColor: CustomColors.primary,
                          function: () {}),
                    ),Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: CustomButton(
                          text: 'milk',
                          textColor: CustomColors.primary,
                          function: () {}),
                    ),Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: CustomButton(
                          text: 'bread',
                          textColor: CustomColors.primary,
                          function: () {}),
                    ),Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: CustomButton(
                          text: 'eggs',
                          textColor: CustomColors.primary,
                          function: () {}),
                    ),Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: CustomButton(
                          text: 'test',
                          textColor: CustomColors.primary,
                          function: () {}),
                    ),Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: CustomButton(
                          text: 'test',
                          textColor: CustomColors.primary,
                          function: () {}),
                    ),
                  ]),
                ),
              ),
            )
          ]),
        ),
        bottomNavigationBar:
            CustomBottomNavBar(selectedMenu: MenuState.search));
  }
}
