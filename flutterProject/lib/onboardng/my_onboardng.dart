import 'package:flutter/material.dart';
import 'package:hw1/authScreens/auth_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  //const ({super.key});
  final List<PageViewModel> pages =[
    PageViewModel(
      title: "Fresh Food",
      body: "Add your food to your \n cart and start ordering",
      footer: ElevatedButton(
        onPressed: (){ },
        child: const Text("let's go"),
      ),
      image: Center(
        child: Image.asset("assets/IMG1.jpg"),

      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),


      ),
    ),
    PageViewModel(
      title: "Arrives order at Doorstep",
      body: "We makefood ordering fast \n simple and free",
      footer: ElevatedButton(
        onPressed: (){ },
        child: const Text("let's go"),
      ),
      image: Center(
        child: Image.asset("assets/IMG2.jpg"),

      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),


      ),
    ),
    PageViewModel(
      title: "Enjoy Delicioues Food",
      body: "Enjoy hot and delicioues food \n with your family and \nfriends.",
      footer: ElevatedButton(
        onPressed: (){ },
        child: const Text("let's go"),
      ),
      image: Center(
        child: Image.asset("assets/IMG3.jpg"),

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
      appBar: appBar(),

      body: Padding(

        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: IntroductionScreen(
          pages: pages ,
          dotsDecorator: const DotsDecorator(
            size: Size(15, 15),
            color: Colors.blue,
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
              fontSize: 20,
            ),),
          showNextButton: true,
          next: const Icon(Icons.arrow_forward, size: 25,),
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
  AppBar appBar()=>AppBar(
    title: const Text("onbording"),
    centerTitle: true,

  );
}
