import 'package:flutter/material.dart';
import 'package:getir_clone/screens/GetirMore/home/widgets/widgets.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/home/widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar:CustomAppBar(context,'getirMore'),
        body:ListView(
            children:[
              const AddressBar(),
              Image.network(
                'https://cdn.getir.com/misc/611e4a50c270af509cd486b5_banner_en_1629375136600.jpeg',
              ),

              const MainCategories(),
              const CategoryList(),
            ]
        )
    );
  }
}


