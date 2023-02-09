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
                child: Text(''))
          ],
        ),

      ],
    ),

)
    .toList();


final List<String> imgList = [
  'https://img.freepik.com/free-vector/hand-drawn-vegetables-supermarket-twitch-banner_23-2149385524.jpg?w=2000',
  'https://img.freepik.com/free-vector/flat-supermarket-twitch-banner_23-2149375306.jpg?w=2000',
  'https://images.template.net/63195/Online-Grocery-Store-Facebook-Post-Template.jpeg',
  'https://static.vecteezy.com/system/resources/previews/001/254/407/non_2x/online-grocery-shopping-banner-template-with-produce-vector.jpg',
  'https://static.vecteezy.com/system/resources/thumbnails/001/254/407/small_2x/online-grocery-shopping-banner-template-with-produce.jpg'
];