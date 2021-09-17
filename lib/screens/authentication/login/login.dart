import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:getir_clone/screens/authentication/signup/register.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/input_field.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  Color textColor = CustomColors.black.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        resizeToAvoidBottomInset:false,
        appBar: CustomAppBar(context, 'Login'),
        body: Padding(
          padding: EdgeInsets.all(CustomSizes.padding5),
          child: Stack(
            children: [
              ListView(
                children: [
                  SizedBox(
                    height:CustomSizes.height7,

                    child: CustomButton(
                        text: 'Connect With Facebook',
                        backGroundColor: CustomColors.blue,
                        textColor: CustomColors.white,
                        function: () {},
                        fontWeight: FontWeight.bold,
                        fontSize: CustomSizes.header4),
                  ),
                  SizedBox(height: CustomSizes.verticalSpace * 2),
                  Form(
                      key: _formKey,
                      child: Column(children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: InputField(
                                  hintText: 'Password',
                                  labelText: 'Country/Region Code',
                                  textInputType: TextInputType.phone,
                                  fontSize: CustomSizes.header5,
                                  textColor: textColor,
                             ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: CustomSizes.padding5),
                                child: InputField(
                                    hintText: '05372735640',
                                    labelText: 'Mobile Number',
                                    textInputType: TextInputType.phone,
                                    fontSize: CustomSizes.header5,
                                    textColor: textColor),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: CustomSizes.padding5),
                        InputField(
                          hintText: 'Password (Min 4 charachter)',
                          labelText: 'Password',
                          obscure: true,
                          fontSize: CustomSizes.header5,
                          textColor: textColor,
                        ),
                        SizedBox(height: CustomSizes.verticalSpace * 2),
                        SizedBox(
                          width:getScreenWidth(),
                          height:CustomSizes.height7,

                          child: CustomButton(
                              text: 'Login',
                              backGroundColor: CustomColors.primary,
                              textColor: CustomColors.white,
                              function: () {
                                if (_formKey.currentState!.validate()) {
                                  setState(() {});
                                } else {
                                  setState(() {
                                    textColor = Colors.red;
                                  });
                                }
                              },
                              fontWeight: FontWeight.bold,
                              fontSize: CustomSizes.header4),
                        ),
                      ])),
                  SizedBox(height: CustomSizes.verticalSpace * 2),
                  CustomText(
                      text: 'Forget Password',
                      color: Colors.black.withOpacity(0.7),
                      fontSize: CustomSizes.header5),
                  SizedBox(height: CustomSizes.padding5),
                ],
              ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  width:getScreenWidth(),
                  height:CustomSizes.height7,
                  child: Padding(
                    padding: EdgeInsets.only(right:CustomSizes.padding1),
                    child: CustomButton(
                        text: 'Register',
                        backGroundColor: CustomColors.white,
                        textColor: CustomColors.primary,
                        borderSize: 1,
                        function: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Register()),
                          );
                        },
                        fontWeight: FontWeight.bold,
                        fontSize: CustomSizes.header4),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
