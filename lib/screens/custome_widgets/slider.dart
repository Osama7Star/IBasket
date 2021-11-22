import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
      items: imageSliders,
      options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1,
          autoPlayInterval: Duration(seconds: 2),
          aspectRatio: 6/3,
          onPageChanged: (index, reason) {
            // setState(() {
            //  // _current = index;
            // });
          }),
    );
  }
}

final List<Widget> imageSliders =  imgList
    .map((item) =>

    Column(
      children: [
        Stack(
          children: [
            Image.network(item,
                fit: BoxFit.cover, width: double.infinity,height:160),
            Positioned(
              bottom:0,
                child: Text('test'))
          ],
        ),

      ],
    ),

)
    .toList();


final List<String> imgList = [
  'https://cdn.getir.com/promos/614190e5c26a22234d735f92_banner_en_1631876061106.jpeg',
  'https://cdn.getir.com/misc/61375beaad3f38acf463b919_banner_en_1632241023739.jpeg',
  'https://cdn.getir.com/promos/6129114fbb5f737b83472af6_banner_en_1630089463487.jpeg',
  'https://cdn.getir.com/misc/614b3915fd6512ee2c75c504_banner_en_1632319821755.jpeg',
  'https://cdn.getir.com/misc/611fddc5fdd26429973dde82_banner_en_1629478389237.jpeg'
];