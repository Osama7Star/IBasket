import 'package:flutter/material.dart';
import 'package:getir_clone/screens/GetirMore/products/products.dart';
import 'package:getir_clone/screens/authentication/login/login.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/support/support.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';
import 'addresses/add_address/addresses.dart';
import 'custom_widgets/widgets.dart';
import 'language/language.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: CustomAppBar(context: context, text: 'Profile'),
        body: ListView(children: [
          ProfileList(
              icon1: Icons.person,
              text: 'Login',
              icon2: Icons.arrow_forward_ios,
              function: () {
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
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Addresses()),
                );
              }),
          ProfileList(
              icon1: Icons.favorite,
              text: 'Favourite Products',
              icon2: Icons.arrow_forward_ios,
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Products(text: 'Favourite Products',showCategories:false)),
                );
              }),
          ProfileList(
              icon1: Icons.contact_support,
              text: 'Support',
              icon2: Icons.arrow_forward_ios,
              function: () { Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Support()),
              );}),

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
              text: 'English',
              icon2: Icons.arrow_forward_ios,
              isIcon1: false,
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Language()),
                );
              }),
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
              function: () {}),
        ]));
  }
}
