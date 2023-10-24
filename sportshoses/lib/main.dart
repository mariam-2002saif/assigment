



import 'package:sportshoses/onboardng/my_onboardng.dart';
import 'package:sportshoses/pages/checkout.dart';
import 'package:sportshoses/pages/details_screen.dart';
import 'package:sportshoses/pages/home.dart';
import 'package:sportshoses/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:sportshoses/splashScreen/my_splash_screen.dart';
import 'package:provider/provider.dart';
//import 'package:firebase_core/firebase_core.dart'show Firebase,FirebaseOptions;
//import 'package:flutter/cupertino.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';



void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
     create: (context) {return Cart();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:MySplachScreen(),
        // Home(),
      ),
    );
  }
}








