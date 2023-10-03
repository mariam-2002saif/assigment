import 'package:flutter/material.dart';
import 'package:hw1/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  //const ({super.key});
  final List<PageViewModel> pages =[
    PageViewModel(
      title: "FirstPage",
      body: "Discrption",
      footer: ElevatedButton(
        onPressed: (){ },
        child: const Text("let is go"),
      ),
      image: Center(
        child: Image.asset("assets/mnm.jpg"),
        
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle( 
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        
        
      ),
    ),
    PageViewModel(
      title: "SecondPage",
      body: "Discrption",
      footer: ElevatedButton(
        onPressed: (){ },
        child: const Text("let is go"),
      ),
      image: Center(
        child: Image.asset("assets/mnm.jpg"),

      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),


      ),
    ),
    PageViewModel(
      title: "ThirdPage",
      body: "Discrption",
      footer: ElevatedButton(
        onPressed: (){ },
        child: const Text("let is go"),
      ),
      image: Center(
        child: Image.asset("assets/mnm.jpg"),

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
    appBar: AppBar(
    title: const Text("onbording"),
  centerTitle: true,
  
    ),
  body: IntroductionScreen(
  pages: pages ,
    dotsDecorator: const DotsDecorator(
      size: Size(10, 10),
      color: Colors.blue,
      activeSize: Size.square(15),
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
    next: const Icon(Icons.arrow_forward, size: 20,),
    onDone: ()=>onDone(context),


  ),
    );
  }
  void onDone(context){
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const HomeScreen()));
      }
}
