import 'package:flutter/material.dart';
import 'package:getir_clone/models/category.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/sizes.dart';


class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.green,
            ),
            width: getScreenWidth() / 5,
            child: Image.asset('lib/assets/images/cat1.jpg')),
        SizedBox(height: CustomSizes.verticalSpace),
        CustomText(
          text: category.name,
          fontSize: CustomSizes.header5,
        )
      ],
    );
  }
}


class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GridView.builder(
      shrinkWrap: true,
      itemCount: categoryList.length,
      primary: false,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: (2 / 2.5),
      ),
      itemBuilder: (context, index) {
        return CategoryWidget(
          category: categoryList[index],
        );
      },
    );
  }
}
