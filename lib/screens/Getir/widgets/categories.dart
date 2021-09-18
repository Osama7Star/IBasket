import 'package:flutter/material.dart';
import 'package:getir_clone/models/category_model.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/sizes.dart';


class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

            width: getScreenWidth() / 5,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),

                child: Image.network(category.imageUrl))),
        SizedBox(height: CustomSizes.verticalSpace),
        CustomText(
          text: category.name,
          fontSize: CustomSizes.header6,
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