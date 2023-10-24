import 'package:flutter/material.dart';
import 'package:sportshoses/pages/home.dart';
import 'package:sportshoses/splashScreen/my_splash_screen.dart';

import '../onboardng/my_onboardng.dart';

class LoginTabPage extends StatefulWidget {

  @override
  State<LoginTabPage> createState() => _FormScreenState();
}

class _FormScreenState extends State<LoginTabPage> {
  final _formfield= GlobalKey<FormState>();
  final emailController=TextEditingController();
  final passController=TextEditingController();
  bool passToggle=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 60),
          child: form(),

        ),
      ),
    );
  }

  Widget form()=>Form(
    key: _formfield,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        // Image.asset("assets/img/a.png",
        //   height: 200,width: 200,),
        SizedBox(height: 50),
       emailField(),
        SizedBox(height: 20),
        passField(),
        SizedBox(height: 60,),
        InkWell(
          onTap: (){
            if( _formfield.currentState!.validate()){
              print('Data Add Successfully');
              emailController.clear();
              passController.clear();

            }
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child:GestureDetector(
                child:Text('Login',style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(_)=>Home()));
              },
                ),
            ),
          ),
        ),

      ],
    ),
  );

  Widget emailField()=> TextFormField(
    keyboardType: TextInputType.emailAddress,
    controller:emailController ,
    decoration: InputDecoration(
      labelText: "Email",
      border: OutlineInputBorder(),
      prefixIcon: Icon(Icons.email),

    ),
    validator: (value){
      bool emailValid =RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value!);
      if(value!.isEmpty){
        return "Enter Email";
      }
      else if(!emailValid){
        return "Enter Valid Email";
      }
    },
  );
  Widget passField()=>TextFormField(
    keyboardType: TextInputType.visiblePassword,
    controller:passController ,
    obscureText: passToggle,
    decoration: InputDecoration(
      labelText: "Password",
      border: OutlineInputBorder(),
      prefixIcon: Icon(Icons.lock),
      suffixIcon: InkWell(
        onTap: (){

          setState(() {
            passToggle= !passToggle;

          });
        },
        child:
        Icon(
            passToggle?Icons.visibility:Icons.visibility_off
        ),
      ),

    ),
    validator: (value){
      if(value!.isEmpty)
      {
        return "Enter Password";
      }
      else if (passController.text.length<6){
        return "Password Lengh should  be more than 6 characters";
      }
    },

  );
}