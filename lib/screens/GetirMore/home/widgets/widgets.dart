import 'package:flutter/material.dart';
import 'package:getir_clone/models/getir/category_model.dart';
import 'package:getir_clone/screens/GetirMore/products/products.dart';
import 'package:getir_clone/screens/custome_widgets/texts.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.category,
    this.imageInLeft = false,
    required this.function,
  }) : super(key: key);

  final CategoryModel category;

  final bool imageInLeft;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              )),
          child: imageInLeft
              ? Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Expanded(
                    flex: 4,
                    child: Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                                text: category.name,
                                fontSize: CustomSizes.header5,
                                fontWeight: FontWeight.bold,
                                color: CustomColors.black),
                          ]),
                    ),
                  ),
                  Expanded(flex: 2, child: Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: Image.network(category.imageUrl),
                  )),
                ])
              : Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Expanded(flex: 2, child: Image.network(category.imageUrl)),
                  Expanded(
                    flex: 4,
                    child: Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                                text: category.name,
                                fontSize: CustomSizes.header5,
                                fontWeight: FontWeight.bold,
                                color: CustomColors.black),
                            CustomText(
                                text: "(64)",
                                fontSize: CustomSizes.header5,
                                fontWeight: FontWeight.bold,
                                color: CustomColors.black.withOpacity(0.3))
                          ]),
                    ),
                  )
                ])),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: categoryList.length,
      primary: false,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: (8 / 3),
      ),
      itemBuilder: (context, index) {
        return Category(
          category: categoryList[index],
          function: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Products(
                      text: 'Products',
                    )),
              );

          },
        );
      },
    );
  }
}
