import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/screens/Getir/widgets/widgets.dart';
import 'package:getir_clone/utilities/sizes.dart';
import 'widgets/categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: CustomAppBar(context: context, text:'getir'),
        body: ListView(children: [
          const AddressBar(),
          Image.network(
            'https://cdn.getir.com/misc/611e4a50c270af509cd486b5_banner_en_1629375136600.jpeg',
          ),

          const MainCategories(),
          const Categories(),
        ]));
  }

}


