import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hw1/authScreens/auth_screen.dart';
import 'package:hw1/onboardng/my_onboardng.dart';
//import 'package:hw1/mainScreen/home_screen.dart';
class MySplachScreen extends StatefulWidget {
  @override
  State<MySplachScreen> createState() => _MySplachScreenState();
}

class _MySplachScreenState extends State<MySplachScreen> {
  splashScreenTimer(){
    Timer(const Duration(seconds: 4),() async
    {Navigator.push(context, MaterialPageRoute(builder: (c)=>IntroScreen()));
    });
  }

  @override
  void initState() //called automatically when user comes here to this splash screen
  {
    super.initState();
    splashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: container(),
    );
  }
  Widget container()=>Container(
    decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.blueGrey,
          ],
          begin: FractionalOffset(0.0,0.0),
          end: FractionalOffset(1.0,0.0),
          stops: [0.0,1.0],
          tileMode: TileMode.clamp,
        )
    ),
    child: center(),

  );
  Widget center()=>Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Image.asset('assets/1.jpg'),
        ),

        const SizedBox(height: 10,),
        const Text(
          "Ishop Users App",
          style: TextStyle(
            fontSize: 30,
            letterSpacing: 3,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),)

      ],
    ),

  );

}
