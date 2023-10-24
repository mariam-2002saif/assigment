// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:sportshoses/authScreens/login_tab_page.dart';
import 'package:sportshoses/model/item.dart';
import 'package:sportshoses/pages/checkout.dart';
import 'package:sportshoses/pages/details_screen.dart';
import 'package:sportshoses/provider/cart.dart';
import 'package:sportshoses/shared/appbar.dart';
import 'package:sportshoses/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  //const Home({Key? key}) : super(key: key);
  List<Item> items = [];
  void _getInitialInfo() {
    items = Item.getItems();
  }


  @override
  Widget build(BuildContext context) {
    _getInitialInfo();


    final carttt = Provider.of<Cart>(context);

    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(product: items[index]),
                      ),
                    );
                  },
                  child: GridTile(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Stack(children: [
                        Positioned(
                          top: -3,
                          bottom: -9,
                          right: 0,
                          left: 0,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(55),
                              child: Padding(

                                padding: const EdgeInsets.only(bottom: 20),
                                child: Image.asset(items[index].imgPath),
                              ),),
                        ),
                      ]),
                    ),
                    header:  IconButton(

                        color: Color.fromARGB(255, 62, 94, 70),
                        onPressed: () {
                          carttt.add(items[index]);
                        },
                        icon: Icon(Icons.add)),

                    footer: GridTileBar(



                      subtitle:
                      Row(

                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Text(items[index].name ,style: TextStyle(color:appbarGreen ),),
                              Text( "\$"+ items[index].price.toString() ,style: TextStyle(color:appbarGreen ),),

                            ],


                          ),



                ),
                  ),
                );
              }),
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/test.jpg"),
                          fit: BoxFit.cover),
                    ),
                    currentAccountPicture: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage("assets/img/a.png")),
                    accountEmail: Text("project.com"),
                    accountName: Text("project",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  ),
                  ListTile(
                      title: Text("Home"),
                      leading: Icon(Icons.home),
                      onTap: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                      }),
                  ListTile(
                      title: Text("My products"),
                      leading: Icon(Icons.add_shopping_cart),
                      onTap: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckOut(),
                      ),
                    );
                      }),
                  ListTile(
                      title: Text("Logout"),
                      leading: Icon(Icons.exit_to_app),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginTabPage()),);
                      }),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Text("Developed by Group,leave it to God ©2023",
                    style: TextStyle(fontSize: 14)),
              )
            ],
          ),
        ),

        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
        child: AppBar(

          actions: [

                ProductsAndPrice()
          ],
          backgroundColor: appbarGreen,
          title: Text("Home"),
        )));
  }
  //AppBar appBar()=>
//Drawer drawer()=>


}



// leading:  IconButton(
//
//     color: Color.fromARGB(255, 62, 94, 70),
//     onPressed: () {
//       carttt.add(items[index]);
//     },
//     icon: Icon(Icons.add)),

// ListTile(
//     title: Text("About"),
//     leading: Icon(Icons.help_center),
//     onTap: () {}),