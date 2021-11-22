import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/input_field.dart';
import 'package:getir_clone/screens/custome_widgets/slider.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class GetirBiTaksi extends StatelessWidget {
  const GetirBiTaksi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding:  EdgeInsets.all(CustomSizes.padding5),
          child: ListView(children: [
            const CustomSlider(),
            InputField(
              hintText: 'What are you looking for ? ',
              textInputType: TextInputType.phone,
              fontSize: CustomSizes.header5,
              verticalPadding: 10,
              borderRadius: 35,
              prefixIcon: IconButton(
                  icon: Icon(
                    Icons.search,
                    size: CustomSizes.iconSizeMedium,
                    color: CustomColors.primary,
                  ),
                  onPressed: () {}),
            ),
            SizedBox(height: CustomSizes.verticalSpace),

            SizedBox(height: CustomSizes.verticalSpace),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                AddressContainer(text: 'Home', address: 'Fatih sultan koprou'),
                Padding(
                  padding: EdgeInsets.only(left: CustomSizes.padding5),
                  child: AddressContainer(
                      text: 'Home', address: 'Fatih sultan koprou '),
                ),
                Padding(
                  padding: EdgeInsets.only(left: CustomSizes.padding5),
                  child: AddressContainer(
                      text: 'Home', address: 'Fatih sultan koprou'),
                ),
              ]),
            ),
            SizedBox(height: CustomSizes.verticalSpace * 2),
            Row(children: [
              Expanded(
                  flex: 1,
                  child: ImageInContainer(
                      imageUrl:
                          'https://png.pngtree.com/png-vector/20210227/ourlarge/pngtree-cartoon-car-stick-figure-taxi-clipart-png-image_2969397.jpg',
                      text: 'Regular',
                      function: () {},
                      height: 100)),
              SizedBox(width:CustomSizes.verticalSpace),
              Expanded(
                  flex: 1,
                  child: ImageInContainer(
                      imageUrl:
                          'https://png.pngtree.com/png-vector/20210227/ourlarge/pngtree-cartoon-car-stick-figure-taxi-clipart-png-image_2969397.jpg',
                      text: 'Regular',
                      function: () {},
                      height: 100)),
              SizedBox(width:CustomSizes.verticalSpace),

              Expanded(
                  flex: 1,
                  child: ImageInContainer(
                      imageUrl:
                          'https://png.pngtree.com/png-vector/20210227/ourlarge/pngtree-cartoon-car-stick-figure-taxi-clipart-png-image_2969397.jpg',
                      text: 'Regular',
                      function: () {},
                      height: 100)),
            ]),
            DropdownButton<String>(
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
            CustomButton(
                text: 'Send BITaksi',
                fontSize: CustomSizes.header5,
                textColor: CustomColors.white,
                backGroundColor: CustomColors.primary,
                function: () {}),
          ]),
        ));
  }
}

class ImageInContainer extends StatelessWidget {
  const ImageInContainer(
      {Key? key,
      required this.imageUrl,
      required this.text,
      required this.height,
      required this.function})
      : super(key: key);
  final String imageUrl;
  final String text;
  final double height;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: CustomColors.black.withOpacity(0.1)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(children: [
          Image.network(imageUrl),
          CustomText(
            text: text,
            color: CustomColors.primary,
            fontWeight: FontWeight.bold,
            fontSize: CustomSizes.header3,
          ),
        ]));
  }
}

class AddressContainer extends StatelessWidget {
  const AddressContainer({Key? key, required this.text, required this.address})
      : super(key: key);

  final String text;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: CustomColors.black.withOpacity(0.1)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                Icons.home,
                size: CustomSizes.iconSizeMedium,
                color: CustomColors.primary,
              ),
              onPressed: () {}),
          CustomText(
            text: text,
            color: CustomColors.black,
            fontWeight: FontWeight.bold,
            fontSize: CustomSizes.header5,
          ),
          CustomText(
            text: ' ${address}',
            color: CustomColors.black.withOpacity(0.5),
            fontWeight: FontWeight.bold,
            fontSize: CustomSizes.header5,
          ),
        ],
      ),
    );
  }
}
