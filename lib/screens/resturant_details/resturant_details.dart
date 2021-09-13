import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/resturant_details/widgets/widgets.dart';
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
                  text: "20 TL discount",
                  icon: Icons.account_balance_wallet_rounded),
              Positioned(
                right: CustomSizes.padding5,
                top: CustomSizes.padding5,
                child: Icon(Icons.favorite,
                    color: Colors.black, size: CustomSizes.iconSizeMedium),
              ),
            ])),
        /// RESTAURANT IMAGE
        Padding(
          padding: EdgeInsets.all(CustomSizes.padding6),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Expanded(
                    flex: 6,
                    child: CustomText(
                      text: 'Çiğ Köfteci Ömer Usta Çiğ Köfteci Ömer Usta ',
                      fontSize: CustomSizes.header3,
                      isCenter:false
                    )),
                const Expanded(
                  flex: 2,
                  child: RestaurantsReviewWidget(
                      review: 3.4, restaurantsNumber: 200, icon: Icons.star),
                ),
              ]),
              SizedBox(height: CustomSizes.verticalSpace),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                CustomText(
                  text: 'Çiğ Köfte ',
                  fontSize: CustomSizes.header5,
                  color: CustomColors.black.withOpacity(0.5),
                ),
                CustomText(
                  text: 'Favorite Local Bites ',
                  fontSize: CustomSizes.header5,
                  color: CustomColors.black.withOpacity(0.5),
                ),
                CustomText(
                  text: 'Closing 23:00 ',
                  fontSize: CustomSizes.header5,
                  color: CustomColors.black.withOpacity(0.5),
                ),
              ]),
              SizedBox(height: CustomSizes.verticalSpace / 2),
              const Divider(),
              SizedBox(height: CustomSizes.verticalSpace / 2),
              Row(children: [
                DeliverTypeCircle(
                  color: CustomColors.grey,
                  widget: Icon(
                    Icons.shopping_bag,
                    color: CustomColors.white,
                    size: CustomSizes.iconSize / 1.5,
                  ),
                ),
                SizedBox(width: CustomSizes.verticalSpace),
                CustomText(
                    text: "Only Restaurant delivert option is available.",
                    color: CustomColors.black.withOpacity(0.5))
              ]),
              SizedBox(height: CustomSizes.verticalSpace / 2),
              Row(children: [
                const DeliverTypeCircle(
                    color: CustomColors.green,
                    widget: CustomText(
                        text: "R",
                        color: CustomColors.white,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: CustomSizes.verticalSpace),
                const CustomText(
                    text: "Restaurant ", color: CustomColors.green),
                CustomText(
                    text: " delivery",
                    color: CustomColors.black.withOpacity(0.5)),
              ]),
              SizedBox(height: CustomSizes.verticalSpace),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                CustomText(
                    text: "30-40 min ",
                    color: CustomColors.black.withOpacity(0.5)),
                CustomText(
                    text: "* ", color: CustomColors.black.withOpacity(0.5)),
                CustomText(
                    text: "Free Delivery",
                    color: CustomColors.black.withOpacity(0.5)),
                CustomText(
                    text: "* ", color: CustomColors.black.withOpacity(0.5)),
                CustomText(
                    text: "Min.  t 15.00 ",
                    color: CustomColors.black.withOpacity(0.5)),
              ]),
              SizedBox(height: CustomSizes.verticalSpace ),
              const Divider(),
              SizedBox(height: CustomSizes.verticalSpace ),

              /// RESTAURANT INFO

              Card(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search,
                        color: CustomColors.primary,
                        size: CustomSizes.iconSizeMedium),
                    hintText: 'What are you craving?',
                    hintStyle: TextStyle(
                        fontSize: CustomSizes.header4,
                        color: CustomColors.black.withOpacity(0.5)),
                  ),
                ),
              ),
           ]
          ),
        ),

        titleandshowall(text: "Çiğ Köfte", function: () {}),
        Card(
          child: Column(children: const [
            MealsWidget(),
            MealsWidget(),
            MealsWidget(),
            MealsWidget(),
            MealsWidget(),
            MealsWidget(),
            MealsWidget(),
          ]),
        ),
        titleandshowall(text: "İçecek", function: () {}),
        Card(
          child: Column(children: const [
            SideMealWidget(text: 'Ayran (200 ml)', price: 5.00),
            SideMealWidget(text: 'Ayran (200 ml)', price: 5.00),
            SideMealWidget(text: 'Ayran (200 ml)', price: 5.00),
            SideMealWidget(text: 'Ayran (200 ml)', price: 5.00),
            SideMealWidget(text: 'Ayran (200 ml)', price: 5.00),
            SideMealWidget(text: 'Ayran (200 ml)', price: 5.00),
          ]),
        ),
        titleandshowall(text: "Plastic Bag", function: () {}),
        Card(
          child: Column(children: const [
            SideMealWidget(text: 'Plastic Bag', price: 5.00),
          ]),
        ),
        titleandshowall(text: "Restaurant Rating", function: () {}),

        RestaurantRatingWidget() ,
        titleandshowall(text: "Comments 14", function: () {}),

      Card(
        child: Container(            padding:  EdgeInsets.all(CustomSizes.padding5),
            child:Column(
          children:[
            RestaurantComments(),
            SizedBox(height:CustomSizes.verticalSpace),
            RestaurantComments(),
            SizedBox(height:CustomSizes.verticalSpace),
            RestaurantComments(),
            SizedBox(height:CustomSizes.verticalSpace),
            RestaurantComments(),
            SizedBox(height:CustomSizes.verticalSpace),

          ]
        )),
      )
      ]),
    );
  }
}

class RestaurantComments extends StatelessWidget {
  const RestaurantComments({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:  EdgeInsets.all(CustomSizes.padding5),
      decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:CustomColors.grey.withOpacity(0.1)
      ),
      child:(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Row(
            children:[
              const StarWidget(),
              SizedBox(width:CustomSizes.verticalSpace),
              CustomText(text:"2 month ago",color:CustomColors.black.withOpacity(0.5),fontSize:CustomSizes.header6)
            ]
          ) ,
          SizedBox(height:CustomSizes.verticalSpace),
          const CustomText(
            text:'Good Restaurant',
            isCenter:false
          )
        ]
      )
      )
    );
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
        child: Row(
          children:[
            Expanded(
              flex:2,
              child:
              Container(
                /// TODO: MAKE THE CONTAINER EXPAND TO FILL AVILABLE SPACE
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:CustomColors.primary.withOpacity(0.1)
                  ),
                  child:Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                      children:[
                         Icon(Icons.star,color:CustomColors.primary,size:CustomSizes.iconSizeMedium),
                        CustomText(text:"4.6",fontSize:CustomSizes.header3,color:CustomColors.primary)
                      ]
                  )
              )
            ),
            Expanded(
                flex:5,
                child:Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child:Center(
                        child: Column(
                          children: const [
                            StarWidget(),
                            StarWidget(),
                            StarWidget(),
                            StarWidget(),
                            StarWidget(),

                          ],
                        )
                    )
                )
            ),
            Expanded(
              flex:3,
            child:Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children:const [
                RatingBar(reviewsNumber: 200,width:60,width1: 40,),
                SizedBox(height:10),
                RatingBar(reviewsNumber: 57,width:60,width1: 10,),
                SizedBox(height:10),
                RatingBar(reviewsNumber: 22,width:60,width1: 6,),
                SizedBox(height:10),
                RatingBar(reviewsNumber: 5,width:60,width1: 5,),
                SizedBox(height:10),
                RatingBar(reviewsNumber: 11,width:60,width1: 8,),
              ]
            )
            )


          ]
        ),
      )
    );
  }
}

class RatingBar extends StatelessWidget {
  const RatingBar({
    Key? key,
    required this.reviewsNumber,required this.width,required this.width1
  }) : super(key: key);

  final double reviewsNumber;
  final double width1, width;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width:width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:CustomColors.primary.withOpacity(0.2),
            ),
            child:Stack(
              children:[
                Container(

            width:width1,

                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color:CustomColors.primary,
                  ),
                  child:const Text('')
                )
              ]
            )
        ),
        CustomText(text:reviewsNumber.toString())
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
      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children:const [
          Icon(Icons.star,color:CustomColors.yellow),
          Icon(Icons.star,color:CustomColors.yellow),
          Icon(Icons.star,color:CustomColors.yellow),
          Icon(Icons.star,color:CustomColors.yellow),
          Icon(Icons.star,color:CustomColors.yellow),

        ]
    );
  }
}

