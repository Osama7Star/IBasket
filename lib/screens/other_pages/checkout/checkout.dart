import 'package:flutter/material.dart';
import 'package:getir_clone/screens/Getir/widgets/widgets.dart';
import 'package:getir_clone/screens/GetirFood/meal/widgets/widgets.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/alert_dialog.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/profile/payment/payment.dart';
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
// ...

    SingingCharacter? _character = SingingCharacter.lafayette;
    SizeConfig().init(context);

    return Scaffold(
        appBar: CustomAppBar(context: context, text: 'Checkout',color: CustomColors.white,fontSize:CustomSizes.header4),
        body: Stack(
          children: [
            ListView(
                children: [
                  const AddressBar(),

                  /// ADD NOTE
                  SizedBox(height: CustomSizes.verticalSpace * 3),
                  Padding(
                    padding: EdgeInsets.only(left: CustomSizes.padding5),
                    child: CustomText(
                        text: 'Not Ekleyin',
                        fontSize: CustomSizes.header5,
                        color: CustomColors.black.withOpacity(0.5),
                        isCenter: false),
                  ),
                  SizedBox(height: CustomSizes.verticalSpace * 2),
                  Card(
                    margin: EdgeInsets.zero,
                    elevation: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(CustomSizes.padding3),
                          child: GestureDetector(
                            onTap:(){
    showDialog(context: context, builder: (BuildContext context) => PopupMessage);},


                            child: CustomText(
                                text: 'Sipariş notunuzu buraya yazabilirsiniz',
                                fontSize: CustomSizes.header5,
                                color: CustomColors.black.withOpacity(0.5),
                                isCenter: false),
                          ),
                        ),
                        Divider(),
                        Row(
                            children: [
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
                              Expanded(child: CustomText(text: 'Don\'t ring the bell',
                                  fontSize: CustomSizes.header5,
                                  color: CustomColors.black,
                                  isCenter: false))
                            ]
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: CustomSizes.verticalSpace * 3),

                  /// END ADD NOTE
                  ///
                  /// SAVING THE PLANET
                  Padding(
                    padding: EdgeInsets.only(left: CustomSizes.padding5),
                    child: CustomText(
                        text: 'Çevreyi Koru',
                        fontSize: CustomSizes.header5,
                        color: CustomColors.black.withOpacity(0.5),
                        isCenter: false),
                  ),
                  SizedBox(height: CustomSizes.verticalSpace * 2),

                  Card(
                    margin: EdgeInsets.zero,
                    child:
                    Row(
                        children: [
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
                          Expanded(child: Padding(
                            padding: EdgeInsets.all(CustomSizes.padding3),
                            child: CustomText(
                                text: 'Bana servis (plastik çatal ,bıçak ,peçete ) gönderme',
                                fontSize: CustomSizes.header5,
                                color: CustomColors.black,
                                isCenter: false),
                          ))
                        ]
                    ),
                  ),

                  /// END SAVING THE PLANET

                  /// DELIVERY OPTION

                  SizedBox(height: CustomSizes.verticalSpace * 3),
                  Padding(
                    padding: EdgeInsets.only(left: CustomSizes.padding5),
                    child: CustomText(
                        text: 'Delivery Option',
                        fontSize: CustomSizes.header5,
                        color: CustomColors.black.withOpacity(0.5),
                        isCenter: false),
                  ),
                  SizedBox(height: CustomSizes.verticalSpace * 2),

                  Card(
                    margin: EdgeInsets.zero,
                    child:
                    Column(
                      children: [
                        Row(
                            children: [
                              Transform.scale(
                                scale: CustomSizes.iconSize / 14,

                                child: Radio<SingingCharacter>(
                                  value: SingingCharacter.lafayette,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter? value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                              ),
                              Expanded(child: Padding(
                                  padding: EdgeInsets.all(CustomSizes.padding3),
                                  child: Column(
                                    children: [
                                      Row(
                                          children: [
                                            DeliverTypeCircle(
                                              color: CustomColors.primary,
                                              widget: Icon(
                                                Icons.shopping_bag,
                                                color: CustomColors.yellow,
                                                size: CustomSizes.iconSize / 1.5,
                                              ),
                                            ),
                                            SizedBox(width: CustomSizes.verticalSpace),

                                            CustomText(text: 'getir ',
                                                fontSize: CustomSizes.header5,
                                                color: CustomColors.primary,
                                                fontWeight: FontWeight.bold,
                                                isCenter: false),
                                            CustomText(text: 'delivery ',
                                                fontSize: CustomSizes.header5,
                                                color: CustomColors
                                                    .blackWithOpacity,
                                                isCenter: false),

                                          ]
                                      ),
                                      SizedBox(
                                          height: CustomSizes.verticalSpace),
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            CustomText(text: '20-25 dk',
                                                fontSize: CustomSizes.header5,
                                                color: CustomColors
                                                    .blackWithOpacity,
                                                isCenter: false),
                                            CustomText(text: '-',
                                                fontSize: CustomSizes.header5,
                                                color: CustomColors
                                                    .blackWithOpacity,
                                                isCenter: false),

                                            CustomText(text: 'Teslimat ₺ 5,00',
                                                fontSize: CustomSizes.header5,
                                                color: CustomColors
                                                    .blackWithOpacity,
                                                isCenter: false),
                                            CustomText(text: '-',
                                                fontSize: CustomSizes.header5,
                                                color: CustomColors
                                                    .blackWithOpacity,
                                                isCenter: false),

                                            CustomText(text: 'Min. ₺ 25,00',
                                                fontSize: CustomSizes.header5,
                                                color: CustomColors
                                                    .blackWithOpacity,
                                                isCenter: false),

                                          ]
                                      )
                                    ],
                                  )

                              ))
                            ]
                        ),
                        Row(
                            children: [
                              Transform.scale(
                                scale: CustomSizes.iconSize / 14,

                                child: Radio<SingingCharacter>(
                                  value: SingingCharacter.lafayette,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter? value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                              ),
                              Expanded(child: Padding(
                                  padding: EdgeInsets.all(CustomSizes.padding3),
                                  child: Column(
                                    children: [
                                      Row(
                                          children: [
                                            const DeliverTypeCircle(
                                                color: CustomColors.green,
                                                widget: CustomText(
                                                    text: "R",
                                                    color: CustomColors.white,
                                                    fontWeight: FontWeight.bold)),
                                            SizedBox(width: CustomSizes.verticalSpace),

                                            CustomText(
                                                text: 'Restaurant  ',
                                                fontSize: CustomSizes.header5,
                                                color: CustomColors
                                                    .green,
                                                isCenter: false),
                                            CustomText(
                                                text: 'delivery ',
                                                fontSize: CustomSizes.header5,
                                                color: CustomColors.blackWithOpacity,
                                                fontWeight: FontWeight.bold,
                                                isCenter: false),

                                          ]
                                      ),
                                      SizedBox(
                                          height: CustomSizes.verticalSpace),
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Expanded(child: CustomText(
                                                text: 'Restoran geçişi bir yoğuluktan dolayi şu anda sadace  Getir ile teslimat yapıyor',
                                                fontSize: CustomSizes.header5,
                                                color: CustomColors
                                                    .blackWithOpacity,
                                                isCenter: false)),

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

                  /// END DELIVERY OPTION

                  /// PAYING METHODS
                  SizedBox(height: CustomSizes.verticalSpace * 3),
                  Padding(
                    padding: EdgeInsets.only(left: CustomSizes.padding5,
                        top: CustomSizes.padding5,
                        right: CustomSizes.padding5,
                        bottom: CustomSizes.padding5),
                    child: CustomText(
                        text: 'Ödeme Yöntemi',
                        fontSize: CustomSizes.header5,
                        color: CustomColors.black.withOpacity(0.5),
                        isCenter: false),
                  ),
                  SizedBox(height: CustomSizes.verticalSpace * 2),

                  Card(
                    margin: EdgeInsets.zero,
                    child:
                    Padding(
                      padding: EdgeInsets.only(top: CustomSizes.padding5,
                          right: CustomSizes.padding5,
                          bottom: CustomSizes.padding5),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Transform.scale(
                              scale: CustomSizes.iconSize / 14,

                              child: Radio<SingingCharacter>(
                                value: SingingCharacter.lafayette,
                                groupValue: _character,
                                onChanged: (SingingCharacter? value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: 'Online Payment',
                                      fontSize: CustomSizes.header5,
                                      color: CustomColors.black,
                                      isCenter: false),
                                  SizedBox(height: CustomSizes.verticalSpace),

                                  Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      children: [
                                        Image.network(
                                            'https://www.campaigntr.com/v3/wp-content/uploads/2020/07/mastercard_logo.png'
                                            , height: 30, width: 30),
                                        SizedBox(
                                            width: CustomSizes.horizontalSpace *
                                                2),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,

                                          children: [
                                            CustomText(
                                                text: 'Ali Ahmet',
                                                fontSize: CustomSizes.header5,
                                                color: CustomColors.black,
                                                isCenter: false),
                                            SizedBox(height: CustomSizes
                                                .verticalSpace),

                                            CustomText(
                                                text: '537234********78',
                                                fontSize: CustomSizes.header5,
                                                color: CustomColors
                                                    .blackWithOpacity,
                                                isCenter: false),
                                          ],
                                        ),

                                      ]
                                  )
                                ]
                            ),
                          ),
                          Expanded(flex: 2,
                              child: CustomButton(text: 'Change',
                                  function: () { Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Payment()));
                                  },
                                  borderSize: 1,
                                  fontSize: CustomSizes.header5))
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: CustomSizes.height5),
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
enum SingingCharacter { lafayette, jefferson }

