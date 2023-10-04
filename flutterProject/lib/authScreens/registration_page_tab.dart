import 'package:flutter/material.dart';
import 'package:hw1/authScreens/login_tab_page.dart';

class RegistrationTabPage extends StatefulWidget {

  @override
  State<RegistrationTabPage> createState() => _FormScreenState();
}

class _FormScreenState extends State<RegistrationTabPage> {
  final _formfield= GlobalKey<FormState>();
  final nameControlle=TextEditingController();
  final emailController=TextEditingController();
  final passController=TextEditingController();
  final configPassController=TextEditingController();
  bool passToggle=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 60),
          child: form(),

        ),
      ),
    );
  }

  AppBar appBar()=>AppBar(
    title: Text("Form Page"),
    centerTitle: true,
  );
  Widget form()=>Form(
    key: _formfield,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Image.asset("assets/person.jpg",
          height: 200,width: 200,),
        SizedBox(height: 50),
        nameField(),
        SizedBox(height: 20),
        emailField(),
        SizedBox(height: 20),
        passField(),
        SizedBox(height: 20),
        configPassField(),
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
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child:GestureDetector(
                child: Text('Registration',style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(_)=>LoginTabPage()));
                },

              ),
            ),
          ),
        ),
        SizedBox(height: 20,),

      ],
    ),
  );
 Widget nameField()=>TextFormField(
   keyboardType: TextInputType.name,
   controller:nameControlle ,
   decoration: InputDecoration(
     labelText: "Name",
     border: OutlineInputBorder(),

   ),
 );
 Widget emailField()=>TextFormField(
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
 Widget passField()=> TextFormField(
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
  Widget configPassField()=>TextFormField(
    keyboardType: TextInputType.visiblePassword,
    controller:configPassController ,
    obscureText: passToggle,
    decoration: InputDecoration(
      labelText: "Config Password",
      border: OutlineInputBorder(),
      prefixIcon: Icon(Icons.lock),

    ),
    validator: (value){
      if(value==null ||value.isEmpty)
      {
        return "Enter Password";
      }
      else if (passController.text.length<6){
        return "Password Lengh should  be more than 6 characters";
      }
      else if(value!=passController.text) {
        return " Password does not much";
      }
      return null;
    },

  );

}
