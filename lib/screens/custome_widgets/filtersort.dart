import 'package:flutter/material.dart';
import 'package:getir_clone/screens/GetirFood/restaurants/widgets/widgets.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class FilterSort extends StatelessWidget {
  const FilterSort({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          margin:
          EdgeInsets.symmetric(horizontal: CustomSizes.padding1),
          padding: EdgeInsets.all(CustomSizes.padding5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: CustomColors.white1,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const ChoicesWidget(
                  text: 'Filters',
                  icon: Icons.filter_alt_sharp,
                ),
                Container(
                  height: CustomSizes.height5 / 4,
                  width: 0.3,
                  color: CustomColors.black.withOpacity(0.3),
                  margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                const ChoicesWidget(
                    text: 'Sorting', icon: Icons.sort_sharp),
              ])),
    );
  }
}