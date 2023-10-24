import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sportshoses/authScreens/login_tab_page.dart';
import 'package:sportshoses/authScreens/registration_page_tab.dart';

class AuthScreen extends StatefulWidget {


  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBar(),
        body:  container(),
      ),
    );
  }
  AppBar appBar()=>AppBar(
    automaticallyImplyLeading: false,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.grey,
              Colors.black,
            ],
            begin: FractionalOffset(0.0,0.0),
            end: FractionalOffset(1.0,0.0),
            stops: [0.0,1.0],
            tileMode: TileMode.clamp,
          )
      ),


    ),
    title:
    const Text("Sport Shose",
      style: TextStyle(fontSize: 30,
        letterSpacing: 3,
        fontWeight: FontWeight.bold,
      ),),
    centerTitle: true,
    bottom: const TabBar(
        indicatorColor: Colors.white54,
        indicatorWeight: 6,
        tabs:[
          Tab(
            text: "login",
            icon: Icon(
              Icons.lock,
              color: Colors.white,

            ),
          ),
          Tab(
            text: "Registration",
            icon: Icon(
              Icons.person,
              color: Colors.white,

            ),
          ),

        ] ),
  );
  Widget container()=>Container(

    child: TabBarView(
      children: [
        LoginTabPage(),
        RegistrationTabPage(),
      ],
    ),
  );
  void onDone(context) async {
    final prefs= await SharedPreferences.getInstance();
    await prefs.setBool("on boarding", false);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context)=>AuthScreen()));
  }
}
