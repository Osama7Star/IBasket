import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/input_field.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/custom_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/language/language.dart';
import 'package:getir_clone/screens/other_pages/promotions/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool editPage = false;
  TextEditingController controller1 =
      TextEditingController(text: 'Osama Alnajm');

  TextEditingController controller2 =
      TextEditingController(text: 'osama.alnagem@gmail.com');

  TextEditingController controller3 =
      TextEditingController(text: '+90 537 72 4890');

  IconData icon = Icons.edit;

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
              editPage
                  ? Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: CustomSizes.padding5),
                          child: Stack(
                            children: [
                              Card(
                                margin: EdgeInsets.zero,
                                child: Padding(
                                  padding: EdgeInsets.all(CustomSizes.padding5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Icon(Icons.person,
                                            size: CustomSizes.iconSizeBig * 2,
                                            color: CustomColors.primary),
                                        Expanded(
                                            child: TextField(
                                          controller: controller1,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Osama Alnajm'),
                                        )),
                                      ]),
                                      Divider(),
                                      Padding(
                                        padding: EdgeInsets.all(
                                            CustomSizes.padding5),
                                        child: Row(children: [
                                          Icon(Icons.mail_sharp,
                                              size: CustomSizes.iconSizeMedium,
                                              color: CustomColors.primary),
                                          SizedBox(
                                              width: CustomSizes.verticalSpace *
                                                  2),
                                          Expanded(
                                              child: TextField(
                                            controller: controller2,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                    'osama.alnagem@gmail.com'),
                                          ))
                                        ]),
                                      ),
                                      Divider(),
                                      Padding(
                                        padding: EdgeInsets.all(
                                            CustomSizes.padding5),
                                        child: Row(children: [
                                          Icon(Icons.phone_android,
                                              size: CustomSizes.iconSizeMedium,
                                              color: CustomColors.primary),
                                          SizedBox(
                                              width: CustomSizes.verticalSpace *
                                                  2),
                                          Expanded(
                                              child: TextField(
                                            controller: controller3,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: '+90 537 272 4890'),
                                          )),
                                        ]),
                                      ),
                                      SizedBox(
                                          width: getScreenWidth(),
                                          height: CustomSizes.height7,
                                          child: CustomButton(
                                              text: 'Save',
                                              function: () {
                                                setState(() {
                                                  editPage = false;
                                                });
                                              },
                                              backGroundColor:
                                                  CustomColors.primary,
                                              textColor: CustomColors.white,
                                              fontSize: CustomSizes.header4))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            right: CustomSizes.padding5,
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    editPage = false;
                                    icon = Icons.edit;
                                  });
                                },
                                child: IconInContainer(icon: icon))),
                      ],
                    )
                  : Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: CustomSizes.padding5),
                          child: Stack(
                            children: [
                              Card(
                                margin: EdgeInsets.zero,
                                child: Padding(
                                  padding: EdgeInsets.all(CustomSizes.padding5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        padding: EdgeInsets.all(
                                            CustomSizes.padding5),
                                        child: Row(children: [
                                          Icon(Icons.mail_sharp,
                                              size: CustomSizes.iconSizeMedium,
                                              color: CustomColors.primary),
                                          SizedBox(
                                              width: CustomSizes.verticalSpace *
                                                  2),
                                          CustomText(
                                              text: 'osama.alnagem@gmail.com',
                                              fontSize: CustomSizes.header5,
                                              color: CustomColors.black
                                                  .withOpacity(0.5),
                                              isCenter: false),
                                        ]),
                                      ),
                                      Divider(),
                                      Padding(
                                        padding: EdgeInsets.all(
                                            CustomSizes.padding5),
                                        child: Row(children: [
                                          Icon(Icons.phone_android,
                                              size: CustomSizes.iconSizeMedium,
                                              color: CustomColors.primary),
                                          SizedBox(
                                              width: CustomSizes.verticalSpace *
                                                  2),
                                          CustomText(
                                              text: '90 537 272 4810',
                                              fontSize: CustomSizes.header5,
                                              color: CustomColors.black
                                                  .withOpacity(0.5),
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
                        Positioned(
                            right: CustomSizes.padding5,
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    editPage = true;
                                    icon = Icons.close;                                  });
                                },
                                child: IconInContainer(icon: icon))),
                      ],
                    ),
              editPage
                  ? SizedBox(width: 0)
                  : Column(children: [
                      SizedBox(height: CustomSizes.verticalSpace * 3),
                      Card(
                        child: Column(children: [
                          ProfileList(
                              icon1: Icons.location_on,
                              text: ' My Addresses',
                              icon2: Icons.arrow_forward_ios,
                              function: () {}),
                          Divider(),
                          ProfileList(
                              icon1: Icons.favorite,
                              text: 'Favourite Products',
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
                              icon1: Icons.receipt_outlined,
                              text: 'Invoice Information',
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
                          Divider(),
                          ProfileList(
                              icon1: Icons.login,
                              text: 'Logout',
                              icon2: Icons.arrow_forward_ios,
                              function: () {}),
                        ]),
                      ),
                      SizedBox(height: CustomSizes.verticalSpace * 2),
                      Padding(
                        padding: EdgeInsets.only(left: CustomSizes.padding5),
                        child: CustomText(
                            text: 'Language',
                            fontSize: CustomSizes.header5,
                            color: CustomColors.black.withOpacity(0.5),
                            isCenter: false),
                      ),
                      SizedBox(height: CustomSizes.verticalSpace),
                      Card(
                        child: ProfileList(
                            icon1: Icons.contact_support,
                            text: 'English',
                            icon2: Icons.arrow_forward_ios,
                            isIcon1: false,
                            function: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Language()),
                              );
                            }),
                      ),
                      SizedBox(height: CustomSizes.verticalSpace * 2),
                      Padding(
                        padding: EdgeInsets.only(left: CustomSizes.padding5),
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
                      SizedBox(height: CustomSizes.verticalSpace * 2),
                    ])
            ]),
          ],
        ));
  }
}
