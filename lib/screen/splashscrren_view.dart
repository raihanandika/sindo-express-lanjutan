import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sindo_express/screen/home.dart';
import 'package:sindo_express/screen/about_us.dart';
import 'package:sindo_express/screen/news.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() { 
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async{
      var duration = const Duration(seconds: 5);
      return Timer(duration, (){
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_){
                return home();
              })
          );
      });
  }
 
  Widget build(BuildContext context) {
    
    return new Container(
        color: Colors.white,
        child: Image.asset("assets/SPLASH_SCREEN.png"),
    );
  }
}