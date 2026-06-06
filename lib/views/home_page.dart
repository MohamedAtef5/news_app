import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text("News",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            Text("Cloud",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}