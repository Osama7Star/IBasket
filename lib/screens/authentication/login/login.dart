import 'package:flutter/material.dart';
import 'package:getir_clone/screens/authentication/signup/register.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/input_field.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: CustomAppBar(context, 'Login'),
        body: Padding(
          padding: EdgeInsets.all(CustomSizes.padding5),
          child: Stack(
            children: [
              ListView(
                children: [
                  CustomButton(
                      text: 'Connect With Facebook',
                      backGroundColor: CustomColors.blue,
                      textColor: CustomColors.white,
                      function: () {},
                      fontWeight: FontWeight.bold,
                      fontSize: CustomSizes.header4),
                  SizedBox(height: CustomSizes.verticalSpace*2),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: InputField(
                            hintText: 'Password',
                            labelText: 'Country/Region Code',
                            textInputType: TextInputType.phone,
                            fontSize: CustomSizes.header5),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: CustomSizes.padding5),
                          child: InputField(
                              hintText: '05372735640',
                              labelText: 'Mobile Number',
                              textInputType: TextInputType.phone,
                              fontSize: CustomSizes.header5),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: CustomSizes.padding5),
                  InputField(
                      hintText: 'Password (Min 4 charachter)',
                      labelText: 'Password',
                      obscure: true,
                      fontSize: CustomSizes.header5),
                  SizedBox(height: CustomSizes.verticalSpace*2),
                  CustomButton(
                      text: 'Login',
                      backGroundColor: CustomColors.primary,
                      textColor: CustomColors.white,
                      function: () {},
                      fontWeight: FontWeight.bold,
                      fontSize: CustomSizes.header4),
                  SizedBox(height: CustomSizes.verticalSpace*2),
                  CustomText(
                      text: 'Forget Password',
                      color: Colors.black.withOpacity(0.7),
                      fontSize: CustomSizes.header5),
                  SizedBox(height: CustomSizes.padding5),

                ],
              ),
              Positioned(
                bottom: 0,
                child: CustomButton(
                    text: 'Register',
                    backGroundColor:CustomColors.white,
                    textColor: CustomColors.primary,
                    borderSize:1,
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Register()),
                      );
                    },
                    fontWeight: FontWeight.bold,
                    fontSize: CustomSizes.header4),
              )
            ],
          ),
        ));
  }
}

