import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("HomeScreen"),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(Icons.arrow_circle_left_outlined,size: 45,color: Colors.white,),
        ),
        toolbarHeight: 80,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
