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
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: Container(


          padding: EdgeInsets.all(CustomSizes.padding5),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(
                    0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(10),
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