import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/input_field.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/custom_widgets/widgets.dart';
import 'package:getir_clone/utilities/sizes.dart';


class AddAddress extends StatelessWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(context: context, text:'Add New Address'),

      body:Center(
        child: ListView(
          children:[
            Card(
              margin:EdgeInsets.zero,
              child: InputField(
                  hintText: 'Search Address',
                  textInputType: TextInputType.phone,
                  fontSize: CustomSizes.header4,
                  prefixIcon:IconButton(icon:Icon(Icons.search,size: CustomSizes.iconSizeMedium,), onPressed: () {  },)
                  ),
            ),
            Card(
              margin:EdgeInsets.zero,

              child: ProfileList(
                  icon1: Icons.location_searching_sharp,
                  text: 'Use current location',
                  icon2: Icons.location_searching_sharp,
                  isIcon2: false,
                  function:(){}),
            ),

          ]
        ),
      )
    );
  }
}
