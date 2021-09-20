import 'package:flutter/material.dart';
import 'package:getir_clone/screens/GetirFood/meal/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/input_field.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/custom_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/promotions/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({Key? key}) : super(key: key);

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  final _formKey = GlobalKey<FormState>();
  bool value = false;
  Color textColor = CustomColors.black.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: CustomAppBar(context: context, text: 'Add New Card'),
        body: Stack(
          children: [
            ListView(children: [
              Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: CustomSizes.padding5,
                      right: CustomSizes.padding5,
                      bottom: CustomSizes.padding5,
                      top: CustomSizes.padding5),
                  child: Row(children: [
                    Expanded(
                        flex: 2,
                        child: IconInContainer(
                          icon: Icons.security,
                          radius: 10,
                          padding: CustomSizes.padding1,
                          iconSize: CustomSizes.iconSizeMedium,
                        )),
                    SizedBox(width: CustomSizes.verticalSpace),
                    Expanded(
                        flex: 5,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  text: 'Security ',
                                  color: CustomColors.primary,
                                  fontSize: CustomSizes.header3,
                                  isCenter: false),
                              CustomText(
                                  text:
                                      'Our Payment infrastructure is provided by MasterCard and the trasnaction security is guranteed by MasterCard  ',
                                  color: CustomColors.blackWithOpacity,
                                  fontSize: CustomSizes.header5,
                                  isCenter: false),
                            ]))
                  ]),
                ),
              ),

              ///
              /// Form

              Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: CustomSizes.padding5,
                      right: CustomSizes.padding5,
                      bottom: CustomSizes.padding5,
                      top: CustomSizes.padding1 * 2),
                  child: Form(
                      key: _formKey,
                      child: Column(children: [
                        InputField(
                            hintText: 'Card Label (Personal etc.)',
                            labelText: '',
                            obscure: true,
                            fontSize: CustomSizes.header5),
                        SizedBox(height: CustomSizes.padding5),
                        InputField(
                            hintText: 'Card No',
                            labelText: 'Card No',
                            obscure: true,
                            fontSize: CustomSizes.header5,
                            textInputType: TextInputType.number),
                        SizedBox(height: CustomSizes.padding5),
                        Row(children: [
                          Expanded(
                            child: InputField(
                                hintText: '',
                                labelText: 'monthmonthmonth',
                                obscure: true,
                                fontSize: CustomSizes.header5),
                          ),
                          SizedBox(width: CustomSizes.verticalSpace),
                          Expanded(
                            child: InputField(
                                hintText: '',
                                labelText: 'year',
                                obscure: true,
                                fontSize: CustomSizes.header5,
                                textInputType: TextInputType.number),
                          )
                        ]),
                        SizedBox(height: CustomSizes.padding5),
                        SizedBox(height: CustomSizes.verticalSpace * 2),
                        Row(children: [
                          Transform.scale(
                            scale: CustomSizes.iconSize / 14,
                            child: Checkbox(
                              value: value,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.value = value!;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RichText(
                                text: TextSpan(
                              text: '',
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'I have read and accept ',
                                    style: TextStyle(
                                        color: CustomColors.black,
                                        fontSize: CustomSizes.header5,
                                        fontFamily: 'Schyler')),
                                TextSpan(
                                    text: 'the Terms and conditions',
                                    style: TextStyle(
                                        color: CustomColors.primary,
                                        fontSize: CustomSizes.header5,
                                        decoration: TextDecoration.underline,
                                        fontFamily: 'Schyler')),
                              ],
                            )),
                          )
                        ]),
                        SizedBox(height: CustomSizes.verticalSpace * 2),
                        SizedBox(height: CustomSizes.verticalSpace * 3),
                      ])),
                ),
              ),
              Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: CustomSizes.padding5),
                    child: Row(children: [
                      Expanded(
                        flex:3,
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_o5Z6oyyhqS8tfl-yagW4V8V7kv4oN0w7O3s5bGcOKboXAHWDOWtJa8e7TD8JGHHQvg&usqp=CAU',
                            height: 50,
                            width: 50),
                      ),
                      SizedBox(width:CustomSizes.verticalSpace*2),
                      Expanded(
                        flex:4,
                       child: Row(
                         children:[
                           Expanded(
                             child: Image.network(
                                 'https://resources.mynewsdesk.com/image/upload/paogmzllvc3kg3gtg7hg.png',
                                 height: 50,
                                 width: 50),
                           ),
                           Expanded(
                             child: Image.network(
                                 'https://icons.iconarchive.com/icons/designbolts/credit-card-payment/256/American-Express-icon.png',
                                 height: 50,
                                 width: 50),
                           ),
                           Expanded(
                             child: Image.network(
                                 'https://upload.wikimedia.org/wikipedia/commons/2/25/Troy_logo.png',
                                 height: 50,
                                 width: 50),
                           )
                         ]
                       ),
                     )
                    ]),
                  )),
            ]),
            Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                margin: EdgeInsets.zero,
                child: Container(
                    height: CustomSizes.height6,
                    padding: EdgeInsets.all(CustomSizes.padding5),
                    width: getScreenWidth(),
                    child: CustomButton(
                      text: 'Countinue',
                      function: () {},
                      backGroundColor: CustomColors.primary,
                      textColor: CustomColors.white,
                      fontSize: CustomSizes.header4,
                    )),
              ),
            )
          ],
        ));
  }
}
