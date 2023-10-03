import 'package:flutter/material.dart';
import "package:google_nav_bar/google_nav_bar.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:GNav(
        backgroundColor: Colors.black,
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.grey.shade800,
        onTabChange: (index){
          print(index);
        },
        tabs: [
          GButton(icon: Icons.home,
          text: 'Home',),

          GButton(icon: Icons.favorite_border,
          text: 'likes',),
          GButton(icon: Icons.search,
          text: 'Searsh',),
          GButton(icon: Icons.settings,
          text: 'Settings',),


        ],
      ),
    );
  }
}
