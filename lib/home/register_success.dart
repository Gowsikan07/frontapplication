import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class RegisterSuccessScreen extends StatelessWidget {
  const RegisterSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registersuccess"),
      ),
      body: SafeArea(child: 
      Column(
        children: [
          Text("Regsiter successfully",style: TextStyle(
            fontSize: 30,fontWeight: FontWeight.w700
          ),),
          Padding(
            padding: const EdgeInsets.all(45.0),
            child: Row(
              children: [
                Text("Login : ",style:TextStyle(
                  fontSize: 20,
                  fontWeight:FontWeight.w900 
                ),),
            
                
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
 ElevatedButton(onPressed: (){
  Get.back();
 }, child:Text("cancel")),
           ElevatedButton(onPressed: (){
            Get.toNamed('/LoginScreen');
           }, child:Text("Login")),
            ],
          )
         
        ],
      )
      ),
      
    );
  }
}