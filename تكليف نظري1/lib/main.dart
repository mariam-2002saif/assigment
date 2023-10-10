import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(Icons.menu,color: Colors.black,),
          title: Center(child: Text("Layouts",style: TextStyle(color: Colors.black),)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Icon(Icons.cloud_outlined,color: Colors.black,),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

                Image.asset("assets/1.jpg",width: 450,height: 250,),


              SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 200.0),
                      child: Text("My Birthday",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 14.0),
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco"),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          //  crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.wb_sunny,color: Colors.blueGrey)
                          ],
                        ),
                        SizedBox(width:  3.0,),
                        Column(
                          children: [
                            Row(
                              children: [Text('81°Clear',style: TextStyle(color: Colors.blueGrey),)],
                            ),
                            Row(
                              children: [
                                Text(
                                  '4500 San Alpho Drive, Dallas, TX United States',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),

                          ],
                        )
                      ],
                    ),
                    //SizedBox(height: 10,),
                    _buildJournalTags(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        CircleAvatar(
                          backgroundImage:AssetImage("assets/c.jpg"),
                          radius: 40.0,
                        ),
                        CircleAvatar(
                          backgroundImage:AssetImage("assets/k.jpg"),
                          radius: 40.0,
                        ),
                        CircleAvatar(
                          backgroundImage:AssetImage("assets/a.jpg"),
                          radius: 40.0,
                        ),
                        SizedBox(
                          width: 100,
                          child: Column
                            (
                            crossAxisAlignment: CrossAxisAlignment.end,

                            children: [
                              Icon(Icons.cake),
                              Icon(Icons.star),
                              Icon(Icons.music_note_sharp)
                            ],
                          ),
                        )

                      ],
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
  Wrap _buildJournalTags() {
    return Wrap(
      spacing: 8.0,
      children: List.generate(7, (int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Chip(
            label: Text(
              'Gift ${index + 1}',
              style: TextStyle(fontSize: 10),
            ),
            avatar: Icon(
              Icons.card_giftcard,
              color: Colors.white,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
              side: BorderSide(color: Colors.grey),
            ),
            backgroundColor: Colors.blue,
          ),
        );
      }),
    );
  }
}
