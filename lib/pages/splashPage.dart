import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:menupro/pages/languageScreen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashScreenState();
}

 class _SplashScreenState extends State<SplashPage>
 with SingleTickerProviderStateMixin{
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LangageScreen()));
    });
  }

  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Image.asset(
                  'assets/images/menuproiconlighttheam.png',
                  height: 200,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/connies.png',
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                "Crafted menu \n experience.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'GothomProBlack',
                    fontSize: 20,
                    color: Color.fromRGBO(27, 27, 27, 1.0)),
              ),
              Image.asset(
                'assets/images/line.png',
                height: 300,
                width: 600,
              ),
            ],
          ),
        ),
      ),
    ); 
  }
  }
