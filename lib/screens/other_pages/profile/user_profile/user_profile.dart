import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/custom_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/language/language.dart';
import 'package:getir_clone/screens/other_pages/promotions/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: CustomAppBarWithIcons(
            context: context,
            text: 'Profile',
            color: CustomColors.white,
            fontSize: CustomSizes.header4,
            widget: Container(width: 0),
            hideLeftIcon: true),
        body: Stack(
          children: [
            ListView(children: [
              SizedBox(height: CustomSizes.verticalSpace * 2),
              Stack(
                children: [

                  Padding(
                    padding:  EdgeInsets.only(top:CustomSizes.padding5),
                    child: Stack(
                      children: [
                        Card(
                          margin: EdgeInsets.zero,
                          child: Padding(
                            padding: EdgeInsets.all(CustomSizes.padding5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Icon(Icons.person,
                                      size: CustomSizes.iconSizeBig * 2,
                                      color: CustomColors.primary),
                                  CustomText(
                                      text: 'Ali Hakan',
                                      fontSize: CustomSizes.header4,
                                      color: CustomColors.black,
                                      isCenter: false),
                                ]),
                                Divider(),
                                Padding(
                                  padding: EdgeInsets.all(CustomSizes.padding5),
                                  child: Row(children: [
                                    Icon(Icons.mail_sharp,
                                        size: CustomSizes.iconSizeMedium,
                                        color: CustomColors.primary),
                                    SizedBox(width: CustomSizes.verticalSpace * 2),
                                    CustomText(
                                        text: 'osama.alnagem@gmail.com',
                                        fontSize: CustomSizes.header5,
                                        color: CustomColors.black.withOpacity(0.5),
                                        isCenter: false),
                                  ]),
                                ),
                                Divider(),
                                Padding(
                                  padding: EdgeInsets.all(CustomSizes.padding5),
                                  child: Row(children: [
                                    Icon(Icons.phone_android,
                                        size: CustomSizes.iconSizeMedium,
                                        color: CustomColors.primary),
                                    SizedBox(width: CustomSizes.verticalSpace * 2),
                                    CustomText(
                                        text: '90 537 272 4810',
                                        fontSize: CustomSizes.header5,
                                        color: CustomColors.black.withOpacity(0.5),
                                        isCenter: false),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Positioned(right:CustomSizes.padding5,child: IconInContainer(icon: Icons.edit)),

                ],
              ),
              SizedBox(height: CustomSizes.verticalSpace * 3),
              Card(
                  margin: EdgeInsets.zero,
                  child: Card(
                    child: Column(children: [
                      ProfileList(
                          icon1: Icons.contact_support,
                          text: ' English English English',
                          icon2: Icons.arrow_forward_ios,
                          function: () {}),
                      Divider(),
                      ProfileList(
                          icon1: Icons.location_on,
                          text: ' My Addresses',
                          icon2: Icons.arrow_forward_ios,
                          function: () {}),
                      Divider(),
                      ProfileList(
                          icon1: Icons.favorite,
                          text: 'Favourite Restaurants',
                          icon2: Icons.arrow_forward_ios,
                          function: () {}),
                      Divider(),
                      ProfileList(
                          icon1: Icons.shopping_bag,
                          text: 'Favourite Restaurants',
                          icon2: Icons.arrow_forward_ios,
                          function: () {}),
                      Divider(),
                      ProfileList(
                          icon1: Icons.shopping_bag,
                          text: 'Favourite Orders',
                          icon2: Icons.arrow_forward_ios,
                          function: () {}),
                      Divider(),
                      ProfileList(
                          icon1: Icons.credit_card_outlined,
                          text: 'Payment Options',
                          icon2: Icons.arrow_forward_ios,
                          function: () {}),
                      Divider(),
                      ProfileList(
                          icon1: Icons.lock,
                          text: 'Change Password',
                          icon2: Icons.arrow_forward_ios,
                          function: () {}),
                      Divider(),
                      ProfileList(
                          icon1: Icons.doorbell,
                          text: 'Communication Preferences',
                          icon2: Icons.arrow_forward_ios,
                          function: () {}),
                      Divider(),
                      ProfileList(
                          icon1: Icons.question_answer,
                          text: 'Support',
                          icon2: Icons.arrow_forward_ios,
                          function: () {}),
                    ]),
                  )),
              SizedBox(height: CustomSizes.verticalSpace * 2),
              Padding(
                padding: EdgeInsets.only(left:CustomSizes.padding5),
                child: CustomText(
                    text: 'Language',
                    fontSize: CustomSizes.header5,
                    color: CustomColors.black.withOpacity(0.5),
                    isCenter: false),
              ),
              SizedBox(height: CustomSizes.verticalSpace ),
              Card(
                child: ProfileList(
                    icon1: Icons.contact_support,
                    text: 'English',
                    icon2: Icons.arrow_forward_ios,
                    isIcon1: false,
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Language()),
                      );
                    }),
              ),
              SizedBox(height: CustomSizes.verticalSpace * 2),
              Padding(
                padding: EdgeInsets.only(left:CustomSizes.padding5),
                child: CustomText(
                    text: 'Version',
                    fontSize: CustomSizes.header5,
                    color: CustomColors.black.withOpacity(0.5),
                    isCenter: false),
              ),
              Card(
                child: ProfileList(
                    icon1: Icons.contact_support,
                    text: '2.0.1',
                    icon2: Icons.arrow_forward_ios,
                    isIcon1: false,
                    isIcon2: false,
                    function: () {}),
              ),
              SizedBox(height: CustomSizes.verticalSpace *2),

            ]),
          ],
        ));
  }
}
