import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class PromotionDetail extends StatelessWidget {
  const PromotionDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context: context, text:'Kampanya Detay',fontSize: CustomSizes.header4,color:CustomColors.white),
      body:Stack(
        children: [
          Padding(
            padding:  EdgeInsets.only(bottom: CustomSizes.height6),
            child: ListView(
                children:[
                  Card(
                      margin:EdgeInsets.zero,

                      child: Padding(
                        padding:  EdgeInsets.all(CustomSizes.padding5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),

                                child: Image.network(
                                    "http://cdn.getir.com/misc/6141761919a01fa2283c7315_android_tr.jpeg?v=1631680678150",height: getScreenHeight()/4,
                                    fit:BoxFit.fill),
                              ),
                            ),
                            SizedBox(height:CustomSizes.verticalSpace),

                            CustomText(text:"Gedik Pre-Cooked Chicken Schnitzel",fontSize:CustomSizes.header4,color:CustomColors.primary),
                            SizedBox(height:CustomSizes.verticalSpace),

                            CustomText(text:"Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel",fontSize:CustomSizes.header5,color:CustomColors.black,isCenter: false,),
                            SizedBox(height:CustomSizes.verticalSpace),
                          ],
                        ),
                      )
                  ),
                  SizedBox(height:CustomSizes.verticalSpace*2),
                  Padding(
                    padding:  EdgeInsets.only(left:CustomSizes.padding5),
                    child: CustomText(text:"Kampanya Koşoulları",fontSize:CustomSizes.header5,color:CustomColors.black.withOpacity(0.5),isCenter:false),
                  ),
                  SizedBox(height:CustomSizes.verticalSpace*2),

                  Card(
                    margin:EdgeInsets.zero,
                    child: Padding(
                      padding:  EdgeInsets.all(CustomSizes.padding5),
                      child: CustomText(text:"Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel Gedik Pre-Cooked Chicken Schnitzel xxxxx ",fontSize:CustomSizes.header5,color:CustomColors.black,isCenter:false),
                    ),
                  ),
                ]
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              margin: EdgeInsets.zero,

              child:Padding(
                padding:  EdgeInsets.all(CustomSizes.padding5),
                child: SizedBox(
                  width:getScreenWidth(),
                  height: CustomSizes.height7,
                  child: CustomButton(backGroundColor: CustomColors.primary, textColor:CustomColors.white,fontSize: CustomSizes.header4,function: () {  }, text: 'Ürünleri Göster',

                  ),
                ),
              )
            ),
          )

        ],
      ),
    );
  }
}
