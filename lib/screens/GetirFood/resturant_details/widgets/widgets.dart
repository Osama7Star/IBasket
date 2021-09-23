import 'package:flutter/material.dart';
import 'package:getir_clone/models/meal.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/GetirFood/meal/meal.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class DiscountBannerWidget extends StatelessWidget {
  const DiscountBannerWidget({
    Key? key,required this.text, required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(CustomSizes.padding5),
      child: Container(
          color: CustomColors.yellow,
          child: Padding(
            padding: EdgeInsets.all(CustomSizes.padding8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: CustomColors.primary,
                  size: CustomSizes.iconSize,
                ),
                SizedBox(width: CustomSizes.horizontalSpace),
                 CustomText(
                  text: text,
                  color: CustomColors.primary,
                   fontWeight:FontWeight.bold
                ),
              ],
            ),
          )),
    );
  }
}

class SideMealWidget extends StatelessWidget {
  const SideMealWidget({
    Key? key,
    required this.text,
    required this.price,
  }) : super(key: key);

  final String text;

  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreenWidth(),
      child: Padding(
        padding: EdgeInsets.all(CustomSizes.padding6),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomText(text: text),
          SizedBox(height: CustomSizes.verticalSpace),
          CustomText(
              text: '₺ ${price}',
              color: CustomColors.primary,
              fontSize: CustomSizes.header4),
          const Divider(),
        ]),
      ),
    );
  }
}

class MealsWidget extends StatelessWidget {
  const MealsWidget({
    Key? key, required this.meal,
  }) : super(key: key);

  final MealModel meal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Meal()),
          );
        },
      child: Container(
        padding: EdgeInsets.all(CustomSizes.padding6),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: MealDetails(meal: meal,),
                ),
                SizedBox(width: CustomSizes.verticalSpace),
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      meal.imageUrl,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}

class MealDetails extends StatelessWidget {
  const MealDetails({
    Key? key,required this.meal,
  }) : super(key: key);
  final MealModel meal;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: meal.name,
              fontWeight: FontWeight.bold,
              fontSize: CustomSizes.header4,
              color: CustomColors.black.withOpacity(0.7)),
          SizedBox(height: CustomSizes.verticalSpace),
          CustomText(
              text: meal.details,
              fontSize: CustomSizes.header5,
              color: CustomColors.black.withOpacity(0.5),
              isCenter:false),
          SizedBox(height: CustomSizes.verticalSpace),
          CustomText(
              text: "₺ ${meal.price}",
              color: CustomColors.primary,
              fontSize: CustomSizes.header4),
        ]);
  }
}
class RestaurantWorkingHours extends StatelessWidget {
  const RestaurantWorkingHours({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:CustomSizes.padding1,vertical:CustomSizes.padding7),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        CustomText(
            text: "Monday",
            fontSize: CustomSizes.header5,
            color: CustomColors.black),
        CustomText(
            text: "14:00 - 22:00",
            fontSize: CustomSizes.header5,
            color: CustomColors.black)
      ]),
    );
  }
}

class RestaurantPaymentChoicesWidget extends StatelessWidget {
  const RestaurantPaymentChoicesWidget({
    Key? key,
    required this.text,
    required this.icon,
    this.isAvailable = true,
  }) : super(key: key);

  final String text;
  final IconData icon;

  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    return isAvailable
        ? Row(children: [
      Container(
        padding: EdgeInsets.only(
            left: CustomSizes.padding1,
            top: CustomSizes.padding5,
            bottom: CustomSizes.padding5),
        color: Colors.white,
        child: Icon(icon,
            size: CustomSizes.iconSizeMedium,
            color: CustomColors.primary),
      ),
      SizedBox(width: CustomSizes.verticalSpace * 2),
      CustomText(
          text: text,
          fontSize: CustomSizes.header4,
          fontWeight: FontWeight.w600,
          color: CustomColors.black)
    ])
        : Row(children: [
      Container(
        padding: EdgeInsets.only(
            left: CustomSizes.padding1,
            top: CustomSizes.padding3,
            bottom: CustomSizes.padding3),
        color: Colors.white,
        child: Icon(icon,
            size: CustomSizes.iconSizeMedium,
            color: CustomColors.primary.withOpacity(0.3)),
      ),
      SizedBox(width: CustomSizes.verticalSpace * 2),
      CustomText(
          text: text,
          fontSize: CustomSizes.header4,
          fontWeight: FontWeight.w600,
          color: CustomColors.black.withOpacity(0.3))
    ]);
  }
}

class RestaurantComments extends StatelessWidget {
  const RestaurantComments({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(CustomSizes.padding5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: CustomColors.grey.withOpacity(0.1)),
        child: (Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            const StarWidget(),
            SizedBox(width: CustomSizes.verticalSpace),
            CustomText(
                text: "2 month ago",
                color: CustomColors.black.withOpacity(0.5),
                fontSize: CustomSizes.header6)
          ]),
          SizedBox(height: CustomSizes.verticalSpace),
          const CustomText(text: 'Good Restaurant', isCenter: false)
        ])));
  }
}

class RestaurantRatingWidget extends StatelessWidget {
  const RestaurantRatingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Expanded(
                flex: 2,
                child: Container(

                  /// TODO: MAKE THE CONTAINER EXPAND TO FILL AVILABLE SPACE
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CustomColors.primary.withOpacity(0.1)),
                    child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Icon(Icons.star,
                          color: CustomColors.primary,
                          size: CustomSizes.iconSizeMedium),
                      CustomText(
                          text: "4.6",
                          fontSize: CustomSizes.header3,
                          color: CustomColors.primary)
                    ]))),
            Expanded(
                flex: 5,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                        child: Column(
                          children: const [
                            StarWidget(),
                            StarWidget(),
                            StarWidget(),
                            StarWidget(),
                            StarWidget(),
                          ],
                        )))),
            Expanded(
                flex: 3,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      RatingBar(
                        reviewsNumber: 200,
                        width: 60,
                        width1: 40,
                      ),
                      SizedBox(height: 10),
                      RatingBar(
                        reviewsNumber: 57,
                        width: 60,
                        width1: 10,
                      ),
                      SizedBox(height: 10),
                      RatingBar(
                        reviewsNumber: 22,
                        width: 60,
                        width1: 6,
                      ),
                      SizedBox(height: 10),
                      RatingBar(
                        reviewsNumber: 5,
                        width: 60,
                        width1: 5,
                      ),
                      SizedBox(height: 10),
                      RatingBar(
                        reviewsNumber: 11,
                        width: 60,
                        width1: 8,
                      ),
                    ]))
          ]),
        ));
  }
}

class RatingBar extends StatelessWidget {
  const RatingBar(
      {Key? key,
        required this.reviewsNumber,
        required this.width,
        required this.width1})
      : super(key: key);

  final double reviewsNumber;
  final double width1, width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: CustomColors.primary.withOpacity(0.2),
            ),
            child: Stack(children: [
              Container(
                  width: width1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: CustomColors.primary,
                  ),
                  child: const Text(''))
            ])),
        CustomText(text: reviewsNumber.toString())
      ],
    );
  }
}

class StarWidget extends StatelessWidget {
  const StarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(Icons.star, color: CustomColors.yellow),
          Icon(Icons.star, color: CustomColors.yellow),
          Icon(Icons.star, color: CustomColors.yellow),
          Icon(Icons.star, color: CustomColors.yellow),
          Icon(Icons.star, color: CustomColors.yellow),
        ]);
  }
}
