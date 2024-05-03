import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                '../../assets/menuproiconlighttheam.png',
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset(
                '../../assets/connies.png',
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 90,
              ),
              Text("Crafted menu \n experience.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromRGBO(27, 27, 27, 1.0)
              ) ,),
            ],
          ),
        ),
      ),
    );
  }
}
