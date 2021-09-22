import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/custom_widgets/widgets.dart';


class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context: context, text:'Change Language'),
      body:Card(
        child: ListView(
          children:[
            ProfileList(
                icon1: Icons.contact_support,
                text: 'Türkçe',
                icon2: Icons.check,
                isIcon1: false,
                function:(){}),
            Divider(),
            ProfileList(
                icon1: Icons.contact_support,
                text: 'English',
                icon2: Icons.check,
                isIcon1: false,
                isIcon2: false,

                function:(){}),
          ]
        ),
      )
    );
  }
}
