import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';


class Cuisines extends StatelessWidget {
  const Cuisines({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: Stack(
        children: [
          Container(
              width: getScreenWidth()*0.3,
              height: CustomSizes.height6,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://cdn.getiryemek.com/cuisines/1619220007982_480x300.jpeg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),

              ),
              child: Stack(
                  alignment: Alignment.bottomCenter,

                  children:[

                    Container(
                        height:CustomSizes.height6,
                        alignment: Alignment.bottomCenter,
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(15),

                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0.3),
                                Colors.black.withOpacity(0.2),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.1),
                              ],
                            )
                        ),
                        child: SizedBox(width:getScreenWidth(),child: CustomText(text:'Burger',color: CustomColors.white,fontWeight: FontWeight.bold,fontSize: CustomSizes.header4,)))
                  ]
              )

          ),
        ],
      ),
    );
  }
}
