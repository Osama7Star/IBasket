import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/input_field.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class InputFieldW extends StatefulWidget {
  InputFieldW(
      {Key? key,
      this.showData = false,
      required this.function,
      required this.function1,
      required this.controller,
      this.passwordSuffixIcon = Icons.mic})
      : super(key: key);
  bool showData;
  Function() function;

  Function() function1;

  TextEditingController controller;

  IconData passwordSuffixIcon;

  @override
  State<InputFieldW> createState() => _InputField1State();
}

class _InputField1State extends State<InputFieldW> {
  @override
  Widget build(BuildContext context) {
    return InputField(

      controller: widget.controller,
      hintText: 'Search Products',
      textInputType: TextInputType.text,
      fontSize: CustomSizes.header4,
      suffixIcon: IconButton(
        icon: Icon(
          widget.passwordSuffixIcon,
          size: CustomSizes.iconSize,
          color: CustomColors.black,
        ),
        onPressed: widget.function1,
      ),
      prefixIcon: IconButton(
        icon: Icon(
          Icons.search,
          size: CustomSizes.iconSizeMedium,
          color: CustomColors.primary,
        ),
        onPressed: widget.function,
      ),
      onChanged: (name) {
        setState(() {
          if (widget.controller.text.isNotEmpty) {
            widget.passwordSuffixIcon = Icons.close;
          } else {
            widget.passwordSuffixIcon = Icons.mic;
          }
        });
      },
    );
  }
}
