import 'package:flutter/material.dart';
import 'package:getir_clone/models/getirs_model.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/resturants.dart';
import 'package:getir_clone/screens/GetirLocals/getir_locals.dart';
import 'package:getir_clone/screens/GetirMore/home/home.dart';
import 'package:getir_clone/screens/GetirWater/getir_water.dart';
import 'package:getir_clone/screens/custome_widgets/buttons.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/screens/other_pages/profile/addresses/add_address/addresses.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

import '../home.dart';

class AddressBar extends StatelessWidget {
  const AddressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Addresses()),
        );
      },
      child: Container(

        decoration: const BoxDecoration(


          color: CustomColors.yellow,
          border: Border(
            bottom: BorderSide(
                width: 0.3, color: CustomColors.blackWithOpacity),
          ),

        ),
        child: Column(
          children: [
            Row(children: [
              Expanded(
                flex: 6,
                child: Container(
                    padding: EdgeInsets.all(CustomSizes.padding1),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      color: Colors.white,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.home,
                              color: Colors.pink,
                              size: CustomSizes.iconSize,
                            ),
                          ),
                          const VerticalDivider(color: Colors.red, width: 20),
                          Expanded(flex: 2,
                              child: CustomText(
                                  text: 'Home ', fontSize: CustomSizes
                                  .header4)),
                          Expanded(
                            flex: 5,
                            child: CustomText(
                              text: 'Kervan geçmez Kervan geçmez  Kervan geçmez  ',
                              color: CustomColors.black.withOpacity(0.5),
                              fontSize: CustomSizes.header4,
                              maxLines: 1,),
                          ),
                          Expanded(
                            flex: 1,
                            child:
                            Icon(Icons.arrow_forward_ios,
                                color: CustomColors.primary,
                                size: CustomSizes.iconSize / 1.2),
                          )
                        ])),
              ),
              Expanded(
                flex: 2,
                child: Container(

                    color: CustomColors.yellow,
                    child: Column(
                      children: [
                        CustomText(text: 'TVS', fontSize: CustomSizes.header5,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(height: 5),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text: '8',
                                fontSize: CustomSizes.header3,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: 'min', fontSize: CustomSizes.header4,
                                fontWeight: FontWeight.bold,
                              ),
                            ])
                      ],
                    )),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
//
// class MainCategories extends StatefulWidget {
//   const MainCategories({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<MainCategories> createState() => _MainCategoriesState();
// }
//
// class _MainCategoriesState extends State<MainCategories> {
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Column(
//
//           children: [
//             SizedBox(
//               height: CustomSizes.verticalSpace * 2,
//             ),
//             SizedBox(
//               width: getScreenWidth(),
//               child: Column(
//                 children: [
//                   Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//
//                         CustomButton(
//                           text: 'getir',
//                           backGroundColor: CustomColors.primary,
//                           textColor: CustomColors.yellow,
//                           function: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (
//                                   context) => const HomePage()),
//                             );
//                           },
//                           fontWeight: FontWeight.bold,
//                           width: getScreenWidth() * 0.17,
//                           height: CustomSizes.height4 / 3.5,
//                         ),
//                         CustomButton(
//                           text: 'getirfood',
//                           fontWeight: FontWeight.bold,
//                           function: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) =>
//                                   Restaurants()),
//                             );
//                           },
//                           width: getScreenWidth() * 0.17,
//                           height: CustomSizes.height4 / 3.5,),
//                         CustomButton(
//                           text: 'getirmore',
//                           function: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (
//                                   context) => const Home()),
//                             );
//                           },
//                           fontWeight: FontWeight.bold,
//                           width: getScreenWidth() * 0.17,
//                           height: CustomSizes.height4 / 3.5,),
//                         CustomButton(
//                           text: 'getirwater',
//                           function: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) =>
//                                   GetirWater()),
//                             );
//                           },
//                           fontWeight: FontWeight.bold,
//                           width: getScreenWidth() * 0.17,
//                           height: CustomSizes.height4 / 3.5,),
//                         CustomButton(
//                           text: 'getirlocals',
//                           function: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) =>
//                                   GetirLocals()),
//                             );
//                           },
//                           fontWeight: FontWeight.bold,
//                           width: getScreenWidth() * 0.17,
//                           height: CustomSizes.height4 / 3.5,),
//                       ]),
//
//                   SizedBox(
//                     height: CustomSizes.verticalSpace * 2,
//                   )
//                 ],
//
//               ),
//             ),
//           ],
//         )
//     );
//   }
// }

class MainCategories extends StatefulWidget {
   MainCategories({Key? key,required this.pageNumber}) : super(key: key);
   int pageNumber ;
  @override
  _MainCategoriesState createState() => _MainCategoriesState();
}

class _MainCategoriesState extends State<MainCategories> {



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(CustomSizes.padding6),
      child: SizedBox(
        height:CustomSizes.height8*1.5,

        child: ListView.builder(
            itemCount: GetirsList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index)
        {
          return CustomButton(
              text: GetirsList[index].name,
              backGroundColor: widget.pageNumber == index
                  ? CustomColors.primary
                  : CustomColors.white,
              textColor:widget. pageNumber == index
                  ? CustomColors.white
                  : CustomColors.primary,
              function:() => GetirsList[index].function(context),


              fontWeight: FontWeight.bold,
              width: getScreenWidth() * 0.17,
              height: CustomSizes.height4 / 3.5
          );}),
      ),
    );


  }
  }

