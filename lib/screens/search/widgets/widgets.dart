import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/input_field.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class InputFieldW extends StatefulWidget {
   InputFieldW({Key? key, this.showData = false}) : super(key: key);
    bool showData;
  @override
  State<InputFieldW> createState() => _InputField1State();
}

class _InputField1State extends State<InputFieldW> {
  TextEditingController controller = new TextEditingController();
  IconData passwordSuffixIcon = Icons.mic;
  @override
  Widget build(BuildContext context) {
    return               InputField(
      controller: controller,
      hintText: 'Search Address',
      textInputType: TextInputType.text,
      fontSize: CustomSizes.header4,
      suffixIcon: IconButton(
        icon: Icon(
          passwordSuffixIcon,
          size: CustomSizes.iconSize,
          color: CustomColors.black,
        ),
        onPressed: () {
          log(controller.text);
          controller.text = '';
          setState((){
            widget.showData = false;
            passwordSuffixIcon = Icons.mic;

          });
        },
      ),
      prefixIcon: IconButton(
        icon: Icon(
          Icons.search,
          size: CustomSizes.iconSizeMedium,
          color: CustomColors.primary,
        ),
        onPressed: () {
          passwordSuffixIcon = Icons.mic;

          if (controller.text.length>0)
          {
            setState((){
              widget.showData = true;
              passwordSuffixIcon =Icons.close;

            });
          }
        },
      ),
      onChanged: (name){

        setState(() {
          if(controller.text.length>0)
          {
            passwordSuffixIcon =Icons.close;
          }
          else{
            passwordSuffixIcon = Icons.mic;

          }
        });
      },
    );
  }
}
