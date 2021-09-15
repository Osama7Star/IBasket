import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/input_field.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool value = false;
  final _formKey = GlobalKey<FormState>();
  Color textColor = CustomColors.black.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, 'Register'),
      body: Padding(
        padding: EdgeInsets.all(CustomSizes.padding5),
        child: ListView(
          children:[
            CustomButton(
                text: 'Connect With Facebook',
                backGroundColor: CustomColors.blue,
                textColor: CustomColors.white,
                function: () {},
                fontWeight: FontWeight.bold,
                fontSize: CustomSizes.header4),
            SizedBox(height: CustomSizes.verticalSpace*2),
          Form(
            key:_formKey,
            child:Column(
              children:[
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
                    hintText: 'Password must be at least 7 long and include at least one special character.',
                    labelText: 'Password',
                    obscure: true,
                    fontSize: CustomSizes.header5),
                SizedBox(height: CustomSizes.padding5),

                InputField(
                    hintText: 'Full Name',
                    labelText: 'Full Name',
                    obscure: true,
                    fontSize: CustomSizes.header5),
                SizedBox(height: CustomSizes.padding5),

                InputField(
                    hintText: 'Email',
                    labelText: 'Email',
                    obscure: true,
                    fontSize: CustomSizes.header5),

                SizedBox(height: CustomSizes.verticalSpace*2),

                Row(
                    children:[
                      Transform.scale(
                        scale: CustomSizes.iconSize/14,

                        child: Checkbox(
                          value: this.value,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                      ),
                      Expanded(child: CustomText(text: 'I want to be informed of special promotion and news regarding Getir ',fontSize:CustomSizes.header5,color:CustomColors.black,isCenter:false))
                    ]
                ),

                SizedBox(height: CustomSizes.verticalSpace*2),

                RichText(
                    text: TextSpan(
                      text: '',

                      children: <TextSpan>[
                        TextSpan(
                            text: 'By becaming member,you accept our ',
                            style: TextStyle(color:CustomColors.black,fontSize:CustomSizes.header5,fontFamily: 'Schyler'))
                        ,
                        TextSpan(text: 'Terms and conditions', style: TextStyle(color:CustomColors.primary,fontSize:CustomSizes.header5,decoration:TextDecoration.underline,fontFamily: 'Schyler')),
                      ],
                    )),
                SizedBox(height: CustomSizes.verticalSpace*2),

                RichText(
                    text: TextSpan(
                      text: 'Please Click  ',
                      style: TextStyle(color:CustomColors.black,fontSize:CustomSizes.header5,fontFamily: 'Schyler'),

                      children: <TextSpan>[
                        TextSpan(
                            text: 'here',
                            style: TextStyle(color:CustomColors.primary,fontSize:CustomSizes.header5,decoration:TextDecoration.underline,fontFamily: 'Schyler' ))
                        ,
                        TextSpan(text: ' to review out privacy notice regarding you personal data', style: TextStyle(color:CustomColors.black,fontSize:CustomSizes.header5,fontFamily: 'Schyler')),
                      ],
                    )),
                SizedBox(height: CustomSizes.verticalSpace*3),

                CustomButton(
                    text: 'Register',
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
              ]
            )
          )

          ]
        ),
      )
    );
  }
}
