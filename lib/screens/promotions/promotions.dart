import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/promotions/promotion_detail.dart';
import 'package:getir_clone/screens/promotions/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Promotions extends StatelessWidget {
  const Promotions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(context: context, text:'Getir',fontSize:CustomSizes.header3),
        body: ListView(
          children: [

            // the tab bar with two items
            SizedBox(
              height: 50,
              child: Card(
                child: TabBar(
                  tabs: [
                    /// TODO : MAKE MARGIN BETWEN BOTTOMNAVIGATION BAR
                    Tab(
                        child: CustomText(
                            text: 'Kampanyalar',
                            color: CustomColors.black,
                            fontSize: CustomSizes.header5,
                            fontWeight: FontWeight.bold)),
                    Tab(
                        child: CustomText(
                            text: 'Duyurular',
                            color: CustomColors.black,
                            fontSize: CustomSizes.header5,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding:  EdgeInsets.only(left:CustomSizes.padding1*2,top:CustomSizes.padding5,bottom:CustomSizes.padding5),
                child: Row(
                    children:[
                      IconInContainer(icon: Icons.add,radius:10),
                      SizedBox(width:CustomSizes.verticalSpace*2),
                      CustomText(
                          text: 'Kampanya Kodu Ekle ',
                          color: CustomColors.primary,
                          fontSize: CustomSizes.header5,
                          isCenter: false),
                    ]
                ),
              ),
            ),

            // create widgets for each tab bar here
            /// TODO : PADDING BOTTOM PROBLEM
            Column(
              children: [

                SizedBox(
                  height: getScreenHeight(),
                  child: TabBarView(
                    children: [
                      ///TODO :USER USERID
                      SingleChildScrollView(
                        child:
                        SizedBox(height: getScreenHeight(), child: const pro()),
                        physics: const NeverScrollableScrollPhysics(),
                      ),

                      SingleChildScrollView(
                          child:
                          SizedBox(height: getScreenHeight(), child: const pro()),
                          physics: NeverScrollableScrollPhysics()),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PromotionCard extends StatelessWidget {
  const PromotionCard({
    Key? key,
    required this.text,
    required this.imageUrl,required this.function,
  }) : super(key: key);

  final String text;
  final String imageUrl;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:function,
      child: Card(
        child: Container(
            padding: EdgeInsets.all(CustomSizes.padding5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageUrl,
                ),
              ),
              SizedBox(height: CustomSizes.verticalSpace),
              CustomText(
                  text: text,
                  color: CustomColors.primary,
                  fontSize: CustomSizes.header5,
                  isCenter: false),
              SizedBox(height: CustomSizes.verticalSpace),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 6,
                        child: CustomText(
                            text:
                            'Feast ürünlerinde 30% indirim Feast ürünlerinde 30% indirimFeast ürünlerinde 30% indirimFeast ürünlerinde 30% indirimFeast ürünlerinde 30% indirimFeast ürünlerinde 30% indirimFeast ürünlerinde 30% indirim !',
                            color: CustomColors.black,
                            fontSize: CustomSizes.header5,
                            isCenter: false)),
                    const Expanded(
                        flex: 1,
                        child:IconInContainer(icon: Icons.arrow_forward_ios,)
                    )
                  ])
            ])),
      ),
    );
  }
}

class pro extends StatelessWidget {
  const pro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(children: [
        PromotionCard(
            text:
            'Kampanyadan yararlanmak için 60 TL minimum sepet tutarını geçmeniz gerekir.',
            imageUrl:
            'https://cdn.getir.com/misc/60641ded216206a90dad79f7_android_tr_1617174044548.jpeg',
        function: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PromotionDetail()),
          );
        }),

      ])
    ]);
  }
}

