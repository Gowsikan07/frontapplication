import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: 
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/Login-background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Column(
              children: [ElevatedButton(onPressed: () {
                Get.toNamed('/RegsiterScreen');
              },
               child: Text("buttom"))],
               
               
            ),
            Row(
              children: [
                
              ],
            )
          ],
        ),
        
        
        
      ),
      
    );
    
  }
}
