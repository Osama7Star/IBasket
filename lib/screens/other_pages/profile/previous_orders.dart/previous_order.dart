import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/previous_orders.dart/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';

class PreviousOrder extends StatelessWidget {
  const PreviousOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(context: context, text: 'Previous orders',color: CustomColors.white),
        body: ListView(children: const [
          PreviousOrderWidget(),
          PreviousOrderWidget(canReorder: false),

          PreviousOrderWidget(),

          PreviousOrderWidget(),
        ]));
  }
}


