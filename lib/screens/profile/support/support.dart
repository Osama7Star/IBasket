import 'dart:async';

import 'package:flutter/material.dart';
import 'package:getir_clone/screens/custome_widgets/widgets.dart';
import 'package:getir_clone/utilities/sizes.dart';
//import'package:webview_flutter/webview_flutter.dart';


class Support extends StatelessWidget {
   Support({Key? key}) : super(key: key);
  //final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(context,"Getir"),
      body:ListView(
        children:[
          SizedBox(
            height: getScreenHeight(),
            child:Text(''),
            // WebView(
            //   initialUrl: 'https://pub.dev/packages/webview_flutter/versions',
            //   javascriptMode: JavascriptMode.unrestricted,
            //   onWebViewCreated: (WebViewController webViewController) {
            //     _controller.complete(webViewController);
            //   },
            // ),
          )
        ]
      )
    );
  }
}
