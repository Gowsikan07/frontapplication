import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  final GlobalKey <FormState> LoginScreen= GlobalKey <FormState>();

  TextEditingController email1controller = TextEditingController();
  Rx<String> email1errortext =  Rx<String>("");
  String? email1validator (String? text){
    if (text!.isEmpty) {
      return "Wrong Email address"
;      
    }
    return null;
  }
  
   TextEditingController password1controller = TextEditingController();
  Rx<String> password1errortext =  Rx<String>("");
  String? password1validator (String? text){
    if (text!.isEmpty) {
      return "Wrong password"
;      
    }
    return null;
  }

  void sumbit1(){
    if (LoginScreen.currentState!.validate()) {
      print("email : ${email1controller.value}");
      
    }
  }
}