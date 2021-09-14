import 'package:flutter/material.dart';
import 'package:getir_clone/utilities/colors.dart';
import 'package:getir_clone/utilities/sizes.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.black,

        body: Stack(
          children: [
            Center(
              child: Image.network(
                  "https://cdn.getiryemek.com/cuisines/1619220348726_480x300.jpeg",
              fit:BoxFit.cover),
            ),
            Padding(
              padding:  EdgeInsets.only(left:CustomSizes.padding5,top:CustomSizes.padding5),
              child: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: CustomColors.white,
                    size: CustomSizes.iconSizeMedium,
                  ),
                  onPressed: () {
                    Navigator.pop(context);

                  }),
            ),
          ],
        ),
      ),
    );
  }
}
