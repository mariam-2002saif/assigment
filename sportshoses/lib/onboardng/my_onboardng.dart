import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sportshoses/authScreens/auth_screen.dart';

import 'package:sportshoses/pages/home.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../authScreens/login_tab_page.dart';

class IntroScreen extends StatelessWidget {
  //const ({super.key});
  final List<PageViewModel> pages =[
    PageViewModel(
      title: "Get notified when new kicks are dropping",
      body: "Never miss a drop of your sneakers's drop!\n Our app provides a release calendar"
          "  with \n secured reservation system to secure your purchase.",

      image:CircleAvatar(
        radius: 80,
        backgroundImage: AssetImage("assets/img/onB1.webp"),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),


      ),
    ),
    PageViewModel(
      title: "Best sneaker shopping expeirence on mobile",
      body: "Welcome to the best sneaker \n shopping experience on mobile!",



      image:CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage("assets/img/onB2.webp"),
      ),

      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),


      ),
    ),
    PageViewModel(
      title: "Get your next kicks now!",
      body: "Best sneaker shopping experience",

      image:CircleAvatar(
        radius: 90,
        backgroundImage: AssetImage("assets/img/onB3.webp"),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),


      ),
    ),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: appBar(),

      body: Padding(

        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: IntroductionScreen(
          pages: pages ,
          dotsDecorator: const DotsDecorator(
            size: Size(15, 15),
            color: Colors.grey,
            activeSize: Size.square(20),
            activeColor: Colors.red,
          ),
          showDoneButton: true,
          done: const Text("Done",
            style: TextStyle(
              fontSize: 20,
            ),),
          showSkipButton: true,
          skip: const Text("Skip",

            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),),
          showNextButton: true,
          next: const Icon(Icons.arrow_forward, size: 25,color: Colors.grey,),
          onDone: ()=>onDone(context),
          curve: Curves.bounceOut,



        ),
      ),
    );
  }
  void onDone(context) async {
    final prefs= await SharedPreferences.getInstance();
    await prefs.setBool("on boarding", false);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context)=>AuthScreen()));



  }


  // AppBar appBar()=>AppBar(
  //   title: const Text("onbording"),
  //   centerTitle: true,
  //   automaticallyImplyLeading: false,
  //
  //
  // );
}
