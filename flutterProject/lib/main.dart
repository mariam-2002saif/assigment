import 'package:flutter/material.dart';
import 'package:hw1/authScreens/auth_screen.dart';
import 'package:hw1/splashScreen/my_splash_screen.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? kay}):super(key: kay);
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(

      title: 'Users App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:MySplachScreen() ,
    );
  }
}