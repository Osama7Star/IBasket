import 'package:flutter/material.dart';
import 'package:getir_clone/screens/Getir/widgets/widgets.dart';
import 'package:getir_clone/screens/GetirFood/meal/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {

  bool value = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar:CustomAppBar(context:context,text:'Checkout'),
      body:Stack(
        children: [
          ListView(
            children:[
              const AddressBar(),
              SizedBox(height:CustomSizes.verticalSpace*3),
              Padding(
                padding:  EdgeInsets.only(left:CustomSizes.padding5),
                child: CustomText(
                    text: 'Not Ekleyin',
                    fontSize: CustomSizes.header5,
                    color: CustomColors.black.withOpacity(0.5),
                    isCenter: false),
              ),
              SizedBox(height:CustomSizes.verticalSpace*2),
              Card(
                margin: EdgeInsets.zero,
                elevation: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(CustomSizes.padding3),
                      child: CustomText(text: 'Sipariş notunuzu buraya yazabilirsiniz',fontSize:CustomSizes.header5,color:CustomColors.black.withOpacity(0.5),isCenter:false),
                    ),
                    Divider(),
                    Row(
                        children:[
                          Transform.scale(
                            scale: CustomSizes.iconSize/14,

                            child: Checkbox(
                              value: value,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.value = value!;
                                });
                              },
                            ),
                          ),
                          Expanded(child: CustomText(text: 'Zili Çalma',fontSize:CustomSizes.header5,color:CustomColors.black,isCenter:false))
                        ]
                    ),
                  ],
                ),
              ),
              SizedBox(height:CustomSizes.verticalSpace*3),
              Padding(
                padding:  EdgeInsets.only(left:CustomSizes.padding5),
                child: CustomText(
                    text: 'Çevreyi Koru',
                    fontSize: CustomSizes.header5,
                    color: CustomColors.black.withOpacity(0.5),
                    isCenter: false),
              ),
              SizedBox(height:CustomSizes.verticalSpace*2),

              Card(
                margin: EdgeInsets.zero,
                child:
                Row(
                    children:[
                      Transform.scale(
                        scale: CustomSizes.iconSize/14,

                        child: Checkbox(
                          value: value,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                      ),
                      Expanded(child: Padding(
                        padding:  EdgeInsets.all(CustomSizes.padding3),
                        child: CustomText(text: 'Bana servis (plastik çatal ,bıçak ,peçete ) gönderme',fontSize:CustomSizes.header5,color:CustomColors.black,isCenter:false),
                      ))
                    ]
                ),
              ),

              ///

              SizedBox(height:CustomSizes.verticalSpace*3),
              Padding(
                padding:  EdgeInsets.only(left:CustomSizes.padding5),
                child: CustomText(
                    text: 'Teslimat Yöntemi',
                    fontSize: CustomSizes.header5,
                    color: CustomColors.black.withOpacity(0.5),
                    isCenter: false),
              ),
              SizedBox(height:CustomSizes.verticalSpace*2),

              Card(
                margin: EdgeInsets.zero,
                child:
                Column(
                  children: [
                    Row(
                        children:[
                          Transform.scale(
                            scale: CustomSizes.iconSize/14,

                            child: Checkbox(
                              value: value,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.value = value!;
                                });
                              },
                            ),
                          ),
                          Expanded(child: Padding(
                              padding:  EdgeInsets.all(CustomSizes.padding3),
                              child:Column(
                                children: [
                                  Row(
                                      children:[
                                        CustomText(text: 'getir ',fontSize:CustomSizes.header5,color:CustomColors.primary,isCenter:false),
                                        CustomText(text: 'getirsin ',fontSize:CustomSizes.header5,color:CustomColors.blackWithOpacity,isCenter:false),

                                      ]
                                  ),
                                  SizedBox(height:CustomSizes.verticalSpace),
                                  Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                      children:[
                                        CustomText(text: '20-25 dk',fontSize:CustomSizes.header5,color:CustomColors.blackWithOpacity,isCenter:false),
                                        CustomText(text: '-',fontSize:CustomSizes.header5,color:CustomColors.blackWithOpacity,isCenter:false),

                                        CustomText(text: 'Teslimat ₺ 5,00',fontSize:CustomSizes.header5,color:CustomColors.blackWithOpacity,isCenter:false),
                                        CustomText(text: '-',fontSize:CustomSizes.header5,color:CustomColors.blackWithOpacity,isCenter:false),

                                        CustomText(text: 'Min. ₺ 25,00',fontSize:CustomSizes.header5,color:CustomColors.blackWithOpacity,isCenter:false),

                                      ]
                                  )
                                ],
                              )

                          ))
                        ]
                    ),
                    Row(
                        children:[
                          Transform.scale(
                            scale: CustomSizes.iconSize/14,

                            child: Checkbox(
                              value: value,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.value = value!;
                                });
                              },
                            ),
                          ),
                          Expanded(child: Padding(
                              padding:  EdgeInsets.all(CustomSizes.padding3),
                              child:Column(
                                children: [
                                  Row(
                                      children:[
                                        CustomText(text: 'Restoran getirsin ',fontSize:CustomSizes.header5,color:CustomColors.blackWithOpacity,isCenter:false),

                                      ]
                                  ),
                                  SizedBox(height:CustomSizes.verticalSpace),
                                  Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                      children:[
                                        Expanded(child: CustomText(text: 'Restoran geçişi bir yoğuluktan dolayi şu anda sadace  Getir ile teslimat yapıyor',fontSize:CustomSizes.header5,color:CustomColors.blackWithOpacity,isCenter:false)),

                                      ]
                                  )
                                ],
                              )

                          ))
                        ]
                    ),
                  ],
                ),
              ),


            ]
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              margin: EdgeInsets.zero,

              child: SizedBox(
                height: CustomSizes.height6,
                child: Padding(
                  padding: EdgeInsets.all(CustomSizes.padding5),
                  child: Row(children: [
                    Expanded(
                      flex: 7,
                      child: ContainerIcon(
                          whichBox: 1,
                          isRounded: true,
                          color: CustomColors.primary,
                          widget: CustomText(
                            text: 'Sipariş Ver',
                            color: CustomColors.white,
                            fontSize: CustomSizes.header4,
                            fontWeight: FontWeight.bold,
                          ),
                          function: () {}),
                    ),
                    Expanded(
                      flex: 4,
                      child: ContainerIcon(
                          whichBox: 2,
                          isRounded: true,
                          color: CustomColors.white,
                          widget: CustomText(
                            text: '₺ 420,00',
                            color: CustomColors.primary,
                            fontSize: CustomSizes.header3,
                            fontWeight: FontWeight.bold,
                          ),
                          function: () {}),
                    ),
                  ]),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
