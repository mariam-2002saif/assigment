import 'package:flutter/material.dart';

void main(){
  runApp( MyApp());

}
class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key=GlobalKey();

   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          key:_key ,
          appBar:AppBar(
            leading:  InkWell(
              onTap: (){
                _key.currentState!.openDrawer();
              },
              child: Icon(Icons.menu),
            ),
          ) ,
          drawer: dr(),
          body: body(),
        ),


    );
  }
}
Drawer dr()
{
  return Drawer(
    width: 200,
    child: ListView(
        children:  [
    const UserAccountsDrawerHeader(
    accountName:  Text('IS_third year'),
    accountEmail:  Text('IS@gmail.com'),
    currentAccountPicture: CircleAvatar(
      radius: 70,
      backgroundColor: Colors.white70,
      child:  CircleAvatar(
        radius: 33,
        backgroundImage:  AssetImage('assets/mm.jpg'),
      ),
    ),
    ),
    SizedBox(height: 20,),
    Container(
      padding: EdgeInsets.only(top: 7,bottom: 7),
      margin: EdgeInsets.only(left: 20,right: 20),
      color: Colors.lightBlueAccent,
      alignment: Alignment.center,
      child: Text('MY personal file',style: TextStyle(fontWeight: FontWeight.bold),),
    ),
          Container(
            padding: EdgeInsets.only(top: 8,bottom: 8),
            margin: EdgeInsets.only(left: 20,right: 20),
            alignment: Alignment.center,
            child: Text('I am a student studying third_year'
                'information system at the Universty'
                'of science and technology',style: TextStyle(fontWeight: FontWeight.bold),
          ),),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.only(top: 7,bottom: 7),
            margin: EdgeInsets.only(left: 20,right: 20),
            color: Colors.lightBlueAccent,
            alignment: Alignment.center,
            child: Text('Skills',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: EdgeInsets.only(top: 7,bottom: 7),
            margin: EdgeInsets.only(left: 20,right: 20),
            alignment: Alignment.center,
            child: Text('1-Computer skills\n'
                '1-Computer skills\n'
                '1-Computer skills',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: EdgeInsets.only(top: 7,bottom: 7),
            margin: EdgeInsets.only(left: 20,right: 20),
            color: Colors.lightBlueAccent,
            alignment: Alignment.center,
            child: Text('Languages',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: EdgeInsets.only(top: 7,bottom: 7),
            margin: EdgeInsets.only(left: 20,right: 20),
            alignment: Alignment.center,
            child: Text('Arabic\n'
                'English\n'
                'Germany\n French',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: EdgeInsets.only(top: 7,bottom: 7),
            margin: EdgeInsets.only(left: 20,right: 20),
            color: Colors.lightBlueAccent,
            alignment: Alignment.center,
            child: Text('Interest',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: EdgeInsets.only(top: 7,bottom: 7),
            margin: EdgeInsets.only(left: 20,right: 20),
            alignment: Alignment.center,
            child: Text('Constant viewing\nWriting\nComputer use\nTravels \nLearn about cultures'
                '\n'
                '\n ',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
  ]
    )
  );
}

Container body(){
  
  return Container(
    padding: EdgeInsets.only(left: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Name  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
        Text("IS",style: TextStyle(color: Colors.red,fontSize: 15),),
        Text("777_777_777",style: TextStyle(color: Colors.red,fontSize: 15),),
        SizedBox(height: 20,),
        Container(
          height: 40,
          margin: EdgeInsets.only(right: 120),
          color: Colors.cyan,
          alignment: Alignment.center,
          child: Text('Professional experience',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
        ),
        SizedBox(height: 10,),
        Text('Job | Companys_name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),


        Container(
          padding: EdgeInsets.only(top: 7,bottom: 7),
          margin: EdgeInsets.only(left: 30,right: 30),
          child: Text(' I worked as an app programmer.\n I worked as an app programmer.\n I worked as an app programmer.',style: TextStyle(fontSize: 15),),
        ),
        SizedBox(height: 10,),
        Text('Job | Companys_name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),


        Container(
          padding: EdgeInsets.only(top: 7,bottom: 7),
          margin: EdgeInsets.only(left: 30,right: 30),
          child: Text(' I worked as an app programmer.\n I worked as an app programmer.\n I worked as an app programmer.',style: TextStyle(fontSize: 15),),
        ),
        SizedBox(height: 10,),
        Text('Job | Companys_name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),


        Container(
          padding: EdgeInsets.only(top: 7,bottom: 7),
          margin: EdgeInsets.only(left: 30,right: 30),
          child: Text(' I worked as an app programmer.\n I worked as an app programmer.\n I worked as an app programmer.',style: TextStyle(fontSize: 15),),
        ),
        SizedBox(height: 20,),
        SizedBox(height: 20,),
        Container(
          height: 40,
          margin: EdgeInsets.only(right: 220),
          color: Colors.cyan,
          alignment: Alignment.center,
          child: Text('Training',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
        ),
        Container(
          padding: EdgeInsets.only(top: 9,bottom: 9),
          margin: EdgeInsets.only(left: 30,right: 30),
          child: Text('Course to build application\nDevelopment web ',style: TextStyle(fontSize: 15),),
        ),


      ],
    ),
  );
}