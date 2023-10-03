import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("APP Screen"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("First App Screen",style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
