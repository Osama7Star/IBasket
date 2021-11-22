import 'package:flutter/material.dart';
import 'package:getir_clone/screens/Getir/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/input_field.dart';
import 'package:getir_clone/screens/custome_widgets/slider.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        body: ListView(
          children: [
            AddressBar(),

            const CustomSlider(),
            Padding(
              padding: EdgeInsets.all(CustomSizes.padding5),

              child: Column(
                children: [
                  CustomText(text:'Hello Ali',color:CustomColors.primary,fontSize:CustomSizes.header5,isCenter:false),
                  SizedBox(height: CustomSizes.padding5),

                  Padding(
                    padding: EdgeInsets.only(left: CustomSizes.padding5),
                    child: InputField(
                        hintText: 'What are you looking for ? ',
                        labelText: '',
                        textInputType: TextInputType.phone,
                        fontSize: CustomSizes.header5,
                      verticalPadding: 10,
                      borderRadius: 35,
                      prefixIcon:IconButton(icon:Icon(Icons.search,size: CustomSizes.iconSizeMedium,color: CustomColors.primary,), onPressed: () {  }),
                  ),),
                  SizedBox(height: CustomSizes.padding5*2),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Expanded(
                          child: CategoryBox(
                        imageUrl:
                            'https://cdn.getir.com/cat/5fd8c58f3bdc2389a56e0fb0_3322c10f-2eed-4ce9-ab5a-90db5ce067f2.jpeg',
                        text: 'getir',
                            height:CustomSizes.height3,
                      )),
                      SizedBox(width: CustomSizes.padding5),
                      Expanded(
                        child: Column(children: [
                           CategoryBox(
                            imageUrl:
                                'https://cdn.getir.com/cat/5fd8c58f3bdc2389a56e0fb0_3322c10f-2eed-4ce9-ab5a-90db5ce067f2.jpeg',
                            text: 'getirmore',
                             height:(CustomSizes.height3/2) - (CustomSizes.padding5/2),

                           ),
                          SizedBox(height: CustomSizes.padding5),
                           CategoryBox(
                            imageUrl:
                                'https://cdn.getir.com/cat/5fd8c58f3bdc2389a56e0fb0_3322c10f-2eed-4ce9-ab5a-90db5ce067f2.jpeg',
                            text: 'getirlocals',
                             height:(CustomSizes.height3/2 )- (CustomSizes.padding5/2),

                           ),
                        ]),
                      )
                    ],
                  ),
                  SizedBox(height: CustomSizes.padding5),

                  Row(
                      children:[
                        Expanded(
                          flex:2,
                            child: CategoryBox(
                              imageUrl:
                              'https://cdn.getir.com/cat/5fd8c58f3bdc2389a56e0fb0_3322c10f-2eed-4ce9-ab5a-90db5ce067f2.jpeg',
                              text: 'getir',
                              height:CustomSizes.height5,
                            )),
                        SizedBox(width: CustomSizes.padding5),

                        Expanded(
                            flex:1,
                            child: CategoryBox(
                              imageUrl:
                              'https://cdn.getir.com/cat/5fd8c58f3bdc2389a56e0fb0_3322c10f-2eed-4ce9-ab5a-90db5ce067f2.jpeg',
                              text: 'getir',
                              height:CustomSizes.height5,
                            )),
                        SizedBox(width: CustomSizes.padding5),

                        Expanded(
                            flex:1,
                            child: CategoryBox(
                              imageUrl:
                              'https://cdn.getir.com/cat/5fd8c58f3bdc2389a56e0fb0_3322c10f-2eed-4ce9-ab5a-90db5ce067f2.jpeg',
                              text: 'getir',
                              height:CustomSizes.height5,
                            )),
                      ]
                  )
                ],
              ),

            )
          ],
        ));
  }
}

class CategoryBox extends StatelessWidget {
  const CategoryBox({Key? key, required this.imageUrl, required this.text,required this.height})
      : super(key: key);
  final String imageUrl;
  final String text;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: CustomColors.black, spreadRadius: .5),
          ],
        ),
        child: Column(children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    left: CustomSizes.padding5, top: CustomSizes.padding5),
                child: CustomText(
                  text: text,
                  color: CustomColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: CustomSizes.header3,
                ),
              )),
          Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                  width: height/2,
                  height: height/2,
                  child: Image.network(
                      imageUrl)))
        ]));
  }
}
