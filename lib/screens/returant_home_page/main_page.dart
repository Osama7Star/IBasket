import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/returant_home_page/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: CustomAppBar(context, 'resturant'),
        body:
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:[
          resturants(),
          resturants(),
          resturants(),
          resturants(),
          resturants(),
          resturants(),
          resturants(),
          resturants(),
        ]
      ),
    ));
  }
}

class resturants extends StatelessWidget {
  const resturants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

          children: [

        Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://cdn.getiryemek.com/cuisines/1619220348726_480x300.jpeg"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            width: getScreenWidth() * 0.9,
            height: CustomSizes.height4,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      color: CustomColors.yellow,
                      child:  Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(

                          children: [
                            Icon(
                              Icons.ac_unit,
                              color: CustomColors.primary,
                              size: CustomSizes.iconSize,
                            ),
                            SizedBox(width:CustomSizes.horizontalSpace),
                            const CustomText(
                              text: '20 TL discount',
                              color: CustomColors.primary,
                            ),
                          ],
                        ),
                      )),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Icon(Icons.favorite,
                      color: Colors.black, size: CustomSizes.iconSizeMedium),
                ),
                Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: CustomColors.white,

                      ),
                      padding: EdgeInsets.all(CustomSizes.padding6 / 2),
                      child: Row(children: [
                        Icon(
                          Icons.star,
                          color: CustomColors.primary,
                          size: CustomSizes.iconSize,
                        ),
                        CustomText(
                            text: '4.6 ',
                            color: CustomColors.primary,
                            fontSize: CustomSizes.header5,
                            fontWeight: FontWeight.bold),
                        CustomText(
                            text: '(200+)',
                            color: CustomColors.black,
                            fontSize: CustomSizes.header6),
                      ]),
                    ))
              ],
            )),
        SizedBox(height:CustomSizes.verticalSpace),
        CustomText(text:'Çiğ Köfte Ömer Üsta (Şirinevler Mah.)',fontWeight: FontWeight.bold,fontSize:CustomSizes.header4),
            SizedBox(height:CustomSizes.verticalSpace),

           Row(
             children: [
               const DeliverTypeCircle(widget: Center(child: CustomText(text:'R',color:CustomColors.white,fontWeight: FontWeight.bold,),),color: CustomColors.green,),
               SizedBox(width:CustomSizes.horizontalSpace/2),

               CustomText(
                   text: 'Resturant ',
                   color: CustomColors.green,
                   fontSize: CustomSizes.header5,),
               CustomText(
                   text: 'delivery ',
                   color: CustomColors.black,
                   fontSize: CustomSizes.header5),
             ],
           ),
            SizedBox(height:CustomSizes.verticalSpace),

            Row(
              children: [


                CustomText(
                  text: '30-40 min ',
                  fontSize: CustomSizes.header5,),
                Text('*'),
                CustomText(
                    text: ' Min. t 15.00 ',
                    color: CustomColors.black,
                    fontSize: CustomSizes.header5),
              ],
            )

          ]),
    );
  }
}


