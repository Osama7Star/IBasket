import 'package:flutter/material.dart';
import 'package:getir_clone/utilities/sizes.dart';

class PaymentDetailsWidget extends StatelessWidget {
  const PaymentDetailsWidget(
      {Key? key, required this.widget1, required this.widget2})
      : super(key: key);

  final Widget widget1, widget2;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: EdgeInsets.all(CustomSizes.padding5),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [widget1, widget2]),
        ));
  }
}