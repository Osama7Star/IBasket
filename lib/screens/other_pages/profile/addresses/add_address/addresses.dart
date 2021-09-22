import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/custom_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/profile.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

import 'add_address.dart';

class Addresses extends StatelessWidget {
  const Addresses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context: context, text:'Addresses',color: CustomColors.white),
      body:ListView(
        children:[
          Card(
            margin:EdgeInsets.zero,
            child: ProfileList(
                icon1: Icons.delete,
                text:'Home',
                text2: 'Şirinevler kasımpaşa mah.',

                row: true,
                icon2: Icons.add,
                function:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddAddress()),
                  );
                }),
          ),
          Card(
            margin:EdgeInsets.zero,
            child: ProfileList(
                icon1: Icons.home,
                text: 'Home',
                text2:'Avcılar üniversite mah.',
                row: true,
                icon2: Icons.add,
                function:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddAddress()),
                  );
                }),
          ),
          Card(
            margin:EdgeInsets.zero,
            child: ProfileList(
                icon1: Icons.home,
                text: 'Work',
                text2:'Kervan geçmez sok. no.5 Kervan geçmez sok. no.5 Kervan geçmez sok. no.5',
                row: true,
                icon2: Icons.delete,
                function:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddAddress()),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.all(CustomSizes.padding5),
            child: CustomText(
                text: 'Add Address',
                fontSize: CustomSizes.header5,
                color: CustomColors.black.withOpacity(0.5),
                isCenter: false),
          ),

          SizedBox(height: CustomSizes.verticalSpace * 2),
          Card(
            margin:EdgeInsets.zero,
            child: ProfileList(
                icon1: Icons.home,
                text: 'Add Getir address',
                icon2: Icons.add,
                function:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddAddress()),
                  );
                }),
          ),
          Card(
            margin:EdgeInsets.zero,

            child: ProfileList(
                icon1: Icons.apartment,
                text: 'add work address',
                icon2: Icons.add,
                function:(){   Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddAddress()),
                );}),
          ),
          Card(
            margin:EdgeInsets.zero,

            child: ProfileList(

                icon1: Icons.account_balance,
                text: 'add other address',
                icon2: Icons.add,
                function:(){   Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddAddress()),
                );}),
          ),
        ]
      )
    );
  }
}
