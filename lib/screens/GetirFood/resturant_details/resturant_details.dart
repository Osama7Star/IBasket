import 'package:flutter/material.dart';
import 'package:getir_clone/models/restaurants_model.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/GetirFood/resturant_details/widgets/widgets.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class RestaurantHomePage extends StatelessWidget {
  const RestaurantHomePage({Key? key, required this.restaurant})
      : super(key: key);
  final RestaurantsModel restaurant;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: CustomAppBarWithIcons(context:context,text:'getirfood',widget:
          BasketCard(value: 200,fromWhichPage: 0)),
          body: ListView(
            children: [
              RestaurantInfo(restaurant: restaurant),
              // the tab bar with two items
              SizedBox(
                height: 50,
                child: Card(
                  child: TabBar(
                    tabs: [
                      /// TODO : MAKE MARGIN BETWEN BOTTOMNAVIGATION BAR
                      Tab(
                          child: CustomText(
                              text: 'Menus',
                              color: CustomColors.black,
                              fontSize: CustomSizes.header5,
                              fontWeight: FontWeight.bold)),
                      Tab(
                          child: CustomText(
                              text: 'Comments',
                              color: CustomColors.black,
                              fontSize: CustomSizes.header5,
                              fontWeight: FontWeight.bold)),
                      Tab(
                          child: CustomText(
                              text: 'About',
                              color: CustomColors.black,
                              fontSize: CustomSizes.header5,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),

              // create widgets for each tab bar here
              const SizedBox(
                height: 1000,
                child: TabBarView(
                  children: [
                    ///TODO :USER USERID
                    SingleChildScrollView(
                      child: RestaurantMenu(),
                      physics: NeverScrollableScrollPhysics(),
                    ),

                    SingleChildScrollView(
                        child: RestaurantReviews(),
                        physics: NeverScrollableScrollPhysics()),

                    SingleChildScrollView(
                        child: RestaurantAbout(),
                        physics: NeverScrollableScrollPhysics()),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class RestaurantInfo extends StatefulWidget {
  const RestaurantInfo({Key? key, required this.restaurant}) : super(key: key);

  final RestaurantsModel restaurant;

  @override
  State<RestaurantInfo> createState() => _RestaurantInfoState();
}

class _RestaurantInfoState extends State<RestaurantInfo> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          height: getScreenHeight() * 0.3,
          width: getScreenWidth(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(widget.restaurant.image),
                  fit: BoxFit.cover)),
          child: Stack(children: [
            const DiscountBannerWidget(
                text: "20 TL discount",
                icon: Icons.account_balance_wallet_rounded),
            Positioned(
                right: CustomSizes.padding5,
                top: CustomSizes.padding5,
                child: isFavorite
                    ? IconButton(
                        icon: Icon(Icons.favorite),
                        color: CustomColors.primary,
                        iconSize: CustomSizes.iconSizeMedium,
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                      )
                    : IconButton(
                        icon: Icon(Icons.favorite),
                        color: CustomColors.black,
                        iconSize: CustomSizes.iconSizeMedium,
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                      )),
          ])),

      /// RESTAURANT IMAGE
      Padding(
        padding: EdgeInsets.all(CustomSizes.padding6),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
                flex: 6,
                child: CustomText(
                    text: widget.restaurant.name,
                    fontSize: CustomSizes.header4,
                    isCenter: false)),
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
            const CustomText(text: "Restaurant ", color: CustomColors.green),
            CustomText(
                text: " delivery", color: CustomColors.black.withOpacity(0.5)),
          ]),
          SizedBox(height: CustomSizes.verticalSpace),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            CustomText(
                text: "30-40 min ", color: CustomColors.black.withOpacity(0.5)),
            CustomText(text: "* ", color: CustomColors.black.withOpacity(0.5)),
            CustomText(
                text: "Free Delivery",
                color: CustomColors.black.withOpacity(0.5)),
            CustomText(text: "* ", color: CustomColors.black.withOpacity(0.5)),
            CustomText(
                text: "Min.  ₺ 15.00 ",
                color: CustomColors.black.withOpacity(0.5)),
          ]),
          SizedBox(height: CustomSizes.verticalSpace),
          const Divider(),
          SizedBox(height: CustomSizes.verticalSpace),

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
        ]),
      ),

      /// SEARCH INPUT FIELD
    ]);
  }
}

class RestaurantMenu extends StatelessWidget {
  const RestaurantMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
    ]);
  }
}

class RestaurantReviews extends StatelessWidget {
  const RestaurantReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      titleandshowall(text: "Restaurant Rating", function: () {}),
      RestaurantRatingWidget(),
      titleandshowall(text: "Comments 14", function: () {}),
      Card(
        child: Container(
            padding: EdgeInsets.all(CustomSizes.padding5),
            child: Column(children: [
              RestaurantComments(),
              SizedBox(height: CustomSizes.verticalSpace),
              RestaurantComments(),
              SizedBox(height: CustomSizes.verticalSpace),
              RestaurantComments(),
              SizedBox(height: CustomSizes.verticalSpace),
              RestaurantComments(),
              SizedBox(height: CustomSizes.verticalSpace),
            ])),
      ),
    ]);
  }
}

class RestaurantAbout extends StatelessWidget {
  const RestaurantAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      titleandshowall(text: "Payment Options", function: () {}),

      Card(
          child: Column(children: const [
        RestaurantPaymentChoicesWidget(
            text: 'Online Payments', icon: Icons.credit_card_outlined),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Divider(),
        ),
        RestaurantPaymentChoicesWidget(
            text: 'Online Payments',
            icon: Icons.credit_card_outlined,
            isAvailable: false),
        Divider(),
        RestaurantPaymentChoicesWidget(text: 'Cash', icon: Icons.money),
      ])),
      titleandshowall(text: "Working Hours", function: () {}),

      Card(
          child: Column(children: const [
        RestaurantWorkingHours(),
        Divider(),
        RestaurantWorkingHours(),
        Divider(),
        RestaurantWorkingHours(),
        Divider(),
        RestaurantWorkingHours(),
        Divider(),
        RestaurantWorkingHours(),
      ])),

      /// RESTAURANT ABOUT
    ]);
  }
}
