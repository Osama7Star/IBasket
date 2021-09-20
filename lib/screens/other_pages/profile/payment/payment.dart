import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/custom_widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

import 'add_card.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar:CustomAppBar(context:context,text:'Payment Options'),
      body:ListView(
        children:[
          Card(
            margin:EdgeInsets.zero,
            child: Column(

              children: [
                SizedBox(height:CustomSizes.verticalSpace),
                ProfileList(
                    icon1: Icons.contact_support,
                    text: 'Ali Ahmet',
                    text2:'531758********30',
                    icon2: Icons.delete,
                function: (){},


      ),
                Divider(),

                ProfileList(
                  icon1: Icons.add,
                  text: 'Add New Card',
                  icon2: Icons.add,
                    isIcon2:false,
                  function: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddNewCard()),
                    );
                  },
                    text1Color:CustomColors.primary


                ),
                Divider(),
                ProfileList(
                  icon1: Icons.add,
                  text: 'Add Card with BKM express',
                  icon2: Icons.add,
                  isIcon2:false,
                  function: (){},
                    text1Color:CustomColors.primary



                ),
              ],
            ),
          )])
    );
  }
}
