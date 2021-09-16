import 'package:flutter/material.dart';
import 'package:getir_clone/models/cuisine_model.dart';
import 'package:getir_clone/screens/cuisine_restaurant/cusine_restaurant.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';


class Cuisines extends StatelessWidget {
  const Cuisines({
    Key? key,required this.cuisine,
  }) : super(key: key);

  final CuisineModel cuisine;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CuisineRestaurant(cuisineName: cuisine.name)),
          );
        },
      child: Padding(
        padding: const EdgeInsets.only(left:8.0),
        child: Stack(
          children: [
            Container(
                width: getScreenWidth()*0.3,
                height: CustomSizes.height6,
                decoration: BoxDecoration(
                  image:  DecorationImage(
                      image: NetworkImage(
                          cuisine.image),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Stack(
                    alignment: Alignment.bottomCenter,

                    children:[

                      Container(
                          height:CustomSizes.height6,
                          alignment: Alignment.bottomCenter,
                          decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(10),

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
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: SizedBox(width:getScreenWidth(),child: CustomText(text:cuisine.name,color: CustomColors.white,fontWeight: FontWeight.bold,fontSize: CustomSizes.header4,)),
                          ))
                    ]
                )

            ),
          ],
        ),
      ),
    );
  }
}
