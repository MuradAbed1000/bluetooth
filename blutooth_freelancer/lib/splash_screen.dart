import 'dart:async';

import 'package:blutooth_freelancer/devices.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), (){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_)=>FlutterBlueApp())
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Center(
              child: Image.asset('assets/1.png'),
            ),
          ),
          
        ],
      ),
    );
  }
}
