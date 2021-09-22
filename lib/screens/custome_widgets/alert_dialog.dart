import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

import 'buttons.dart';

Dialog ConfirmationPopup = Dialog(
    child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(CustomSizes.padding1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //  color: CustomColors.grey.withOpacity(0.1)

        ),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
           CustomText(
            text: 'Are you sure you want to delete your address?',
            color: CustomColors.black,
            fontSize:CustomSizes.header4,
          ),

          SizedBox(height:CustomSizes.verticalSpace*4),
          Row(children: [
            Expanded(
              child: SizedBox(
                width: getScreenWidth()/2,
                height: CustomSizes.height7,
                child: CustomButton(
                    text: 'Cancel',
                    function: () {
                    //  Navigator.pop(context);

                    },
                    backGroundColor: CustomColors.grey,
                    textColor: CustomColors.white,
                    fontSize: CustomSizes.header4),
              ),
            ),
            SizedBox(width:CustomSizes.verticalSpace),

            Expanded(
                child: SizedBox(
                  width: getScreenWidth()/2,
                  height: CustomSizes.height7,

                  child: CustomButton(
                      text: 'Save',
                      function: () {},
                      backGroundColor: CustomColors.primary,
                      textColor: CustomColors.white,
                      fontSize: CustomSizes.header4),
                ))
          ])
        ])),
        insetPadding: EdgeInsets.symmetric(horizontal: CustomSizes.padding5),
);



Dialog PopupMessage = Dialog(
  //this right here
  child: Container(
    width:getScreenWidth(),
    padding:EdgeInsets.all(CustomSizes.padding1),
    decoration: const BoxDecoration(borderRadius: BorderRadius.only(
        topRight: Radius.circular(50),
        bottomRight: Radius.circular(50)),),
    child: Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left:CustomSizes.padding5),
            child: TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                border: InputBorder.none,

                hintText: 'Here you can add your order\'s note  ',
                hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),

              ),
            ),
          ),
          Divider(),

          Row(
              children: [
                Transform.scale(
                  scale: CustomSizes.iconSize / 14,

                  child: Checkbox(
                    value: false,
                    onChanged: (bool? value) {


                    },
                  ),
                ),
                Expanded(child: CustomText(text: 'Don\'t Ring the bell',
                    fontSize: CustomSizes.header5,
                    color: CustomColors.black,
                    isCenter: false))
              ]
          ),
          SizedBox(height: CustomSizes.verticalSpace*2),
          Row(
              children: [
                Expanded(child: SizedBox(
                  height:CustomSizes.height7/1.2,
                  child: CustomButton(text: 'Close',
                    function: () {},
                    backGroundColor: CustomColors.grey,
                    textColor: CustomColors.white,
                    fontSize: CustomSizes.header5,),
                )),
                Expanded(child: SizedBox(
                  height:CustomSizes.height7/1.2,

                  child: CustomButton(text: 'Save',
                      function: () {},
                      backGroundColor: CustomColors.primary,
                      textColor: CustomColors.white,
                      fontSize: CustomSizes.header5),
                ),
                )
              ]
          )

        ],
      ),
    ),

  ),
);