import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:menupro/components/languageComponent.dart';

class LanguageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
                  'assets/images/menuproiconlighttheam.png',
                  height: 200,
                  width: 200,
                ),
          LanguageComponent(),
        ],),
    );
  }
  
}