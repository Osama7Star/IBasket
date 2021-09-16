import 'package:flutter/material.dart';
import 'package:getir_clone/screens/authentication/login/login.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

import 'addresses.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: CustomAppBar(context, 'Profile'),
        body: ListView(children: [
           ProfileList(
              icon1: Icons.person,
              text: 'Login',
              icon2: Icons.arrow_forward_ios,
          function:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          }),
          SizedBox(height: CustomSizes.verticalSpace * 2),
           ProfileList(
              icon1: Icons.location_on_rounded,
              text: 'My Addresses',
              icon2: Icons.arrow_forward_ios,
           function:(){Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => Addresses()),
           );}),
           ProfileList(
              icon1: Icons.favorite,
              text: 'Favourite Products',
              icon2: Icons.arrow_forward_ios,
               function:(){}),
           ProfileList(
              icon1: Icons.contact_support,
              text: 'Support',
              icon2: Icons.arrow_forward_ios,
               function:(){}),
           ProfileList(
              icon1: Icons.contact_support,
              text: 'Support',
              icon2: Icons.arrow_forward_ios,
               function:(){}),
          SizedBox(height: CustomSizes.verticalSpace * 2),
          Padding(
            padding: EdgeInsets.all(CustomSizes.padding5),
            child: CustomText(
                text: 'Language',
                fontSize: CustomSizes.header5,
                color: CustomColors.black.withOpacity(0.5),
                isCenter: false),
          ),
          SizedBox(height: CustomSizes.verticalSpace * 2),
           ProfileList(
              icon1: Icons.contact_support,
              text: 'Support',
              icon2: Icons.arrow_forward_ios,
              isIcon1: false,
              function:(){}),
          SizedBox(height: CustomSizes.verticalSpace * 2),
          Padding(
            padding: EdgeInsets.all(CustomSizes.padding5),
            child: CustomText(
                text: 'Version',
                fontSize: CustomSizes.header5,
                color: CustomColors.black.withOpacity(0.5),
                isCenter: false),
          ),
           ProfileList(
              icon1: Icons.contact_support,
              text: '2.0.1',
              icon2: Icons.arrow_forward_ios,
              isIcon1: false,
              isIcon2: false,
              function:(){}),
        ]));
  }
}

class ProfileList extends StatelessWidget {
  const ProfileList({
    Key? key,
    required this.icon1,
    required this.icon2,
    required this.text,
    this.isIcon1 = true,
    this.isIcon2 = true,required this.function,
  }) : super(key: key);

  final IconData icon1, icon2;
  final String text;

  final isIcon1, isIcon2;

  final Function() function ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:function,
      child: Card(
          margin: EdgeInsets.zero,
          child: isIcon1
              ? ListTile(
                  leading: isIcon1
                      ? Icon(icon1,
                          color: CustomColors.primary,
                          size: CustomSizes.iconSizeMedium)
                      : Container(width: 0),
                  title: CustomText(
                      text: text,
                      fontSize: CustomSizes.header4,
                      color: CustomColors.black,
                      isCenter: false,
                      fontWeight: FontWeight.bold),
                  trailing: isIcon2
                      ? Icon(icon2,
                          color: CustomColors.primary, size: CustomSizes.iconSize)
                      : Container(width: 0),
                )
              : Padding(
                  padding: EdgeInsets.all(CustomSizes.padding4),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            text: text,
                            fontSize: CustomSizes.header4,
                            color: CustomColors.black,
                            isCenter: false,
                            fontWeight: FontWeight.bold),
                        isIcon2
                            ? Icon(icon2,
                                color: CustomColors.primary,
                                size: CustomSizes.iconSize)
                            : Container(width: 0)
                      ]),
                )),
    );
  }
}
