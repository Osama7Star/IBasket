import 'package:flutter/material.dart';
import 'package:getir_clone/screens/Getir/home.dart';
import 'package:getir_clone/screens/other_pages/profile/profile.dart';
import 'package:getir_clone/screens/other_pages/profile/user_profile/user_profile.dart';
import 'package:getir_clone/screens/other_pages/promotions/promotions.dart';
import 'package:getir_clone/screens/other_pages/promotions/widgets/widgets.dart';
import 'package:getir_clone/screens/other_pages/search/search.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          color: Colors.white70,
          child: Padding(
            padding: EdgeInsets.only(top: CustomSizes.padding3),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -45),
                    blurRadius: 90,
                    color: CustomColors.primary.withOpacity(0.15),
                  ),
                ],
              ),
              child: SafeArea(
                  top: false,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex:2,
                        child: Container(
                          decoration:  BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: MenuState.home == selectedMenu?CustomColors.primary:CustomColors.white,
                                width: 3,
                              ),

                            ),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.home,
                                size: CustomSizes.iconSizeMedium*1.2),
                            highlightColor: CustomColors.primary,
                            color: MenuState.home == selectedMenu
                                ? CustomColors.primary
                                : inActiveIconColor,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            },
                          ),
                        ),
                      ),

                      Expanded(
                        flex:2,
                        child: Container(
                          decoration:  BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: MenuState.search == selectedMenu?CustomColors.primary:CustomColors.white,
                                width: 3,
                              ),

                            ),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.search,
                                size: CustomSizes.iconSizeMedium*1.2),
                            highlightColor: CustomColors.primary,
                            color: MenuState.search == selectedMenu
                                ? CustomColors.primary
                                : inActiveIconColor,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Search()),
                              );
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex:1,
                        child: IconButton(
                          icon: Icon(Icons.home,
                              size: CustomSizes.iconSizeMedium,color: Colors.white,),
                          highlightColor: CustomColors.primary,
                          color: MenuState.home == selectedMenu
                              ? CustomColors.primary
                              : inActiveIconColor,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        flex:2,
                        child: Container(
                          decoration:  BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: MenuState.profile == selectedMenu?CustomColors.primary:CustomColors.white,
                                width: 3,
                              ),

                            ),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.person,
                                size: CustomSizes.iconSizeMedium*1.2),
                            highlightColor: CustomColors.primary,
                            color: MenuState.profile == selectedMenu
                                ? CustomColors.primary
                                : inActiveIconColor,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserProfile()),
                              );
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex:2,
                        child: Container(
                          decoration:  BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: MenuState.promotion == selectedMenu?CustomColors.primary:CustomColors.white,
                                width:  3,
                              ),

                            ),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.wallet_giftcard,
                                size: CustomSizes.iconSizeMedium*1.2),
                            highlightColor: CustomColors.primary,
                            color: MenuState.promotion == selectedMenu
                                ? CustomColors.primary
                                : inActiveIconColor,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Promotions()),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ),
         Positioned(bottom:5,child: IconInContainer(icon: Icons.add, radius: 50,iconSize: CustomSizes.iconSize*1.2,padding: 16,borderColor: CustomColors.white,)),
      ],
    );
  }
}

enum MenuState { home, search,profile,promotion }
