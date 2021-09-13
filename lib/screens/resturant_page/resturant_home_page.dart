import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/resturant_page/widgets/widgets.dart';
import 'package:getir_clone/screens/resturants/widgets/resturants_widget.dart';
import 'package:getir_clone/screens/resturants/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class RestaurantHomePage extends StatelessWidget {
  const RestaurantHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, 'GetirYemek'),
      body: ListView(children: [
        Container(
            height: getScreenHeight() * 0.3,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.getiryemek.com/cuisines/1619220348726_480x300.jpeg"),
                    fit: BoxFit.cover)),
            child: Stack(children: [
              const DiscountBannerWidget(
                  text: "20 TL discount", icon: Icons.check),
              Positioned(
                right: CustomSizes.padding5,
                top: CustomSizes.padding5,
                child: Icon(Icons.favorite,
                    color: Colors.black, size: CustomSizes.iconSizeMedium),
              ),
            ])),
        Padding(
          padding:  EdgeInsets.all(CustomSizes.padding6),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: const [
            CustomText(text: 'Çiğ Köfteci Ömer Usta '),
             RestaurantsReviewWidget(
                review: 3.4,
                restaurantsNumber: 200,
                icon:Icons.star
            ),
          ]),
        )
      ]),
    );
  }
}
