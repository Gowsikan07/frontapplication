import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegsiterController extends GetxController {
  final GlobalKey<FormState> RegsiterScreen = GlobalKey<FormState>();

  TextEditingController firstnamecontroller = TextEditingController();
  Rx<String> firstnameerrortext = Rx<String>("");
  String? firstnamevalidator(String? text) {
    if (text!.isEmpty) {
      return "Name should not be empty";
    }return null;
  }

  TextEditingController lastnamecontroller = TextEditingController();
  Rx<String> lastnameerrortext = Rx<String>("");
  String? lasttnamevalidator(String? text) {
    if (text!.isEmpty) {
      return "Name should not be empty";
    }return null;
  }

  TextEditingController emailcontroller = TextEditingController();
  Rx<String> emailerrortext = Rx<String>("");
  String? emailvalidator(String? text) {
    if (text!.isEmpty) {
      return "Email should not be empty";
    }return null;
  }

  TextEditingController dataofbirthcontroller = TextEditingController();
  Rx<String> dataofbirtherrortext = Rx<String>("");
  String? dataofbirthvalidator(String? text) {
    if (text!.isEmpty) {
      return "Data of birth should not be empty";
    }return null;
  }

  TextEditingController passwordcontroller = TextEditingController();
  Rx<String> passworderrortext = Rx<String>("");
  String? passwordvalidator(String? text) {
    if (text!.isEmpty) {
      return "Data of birth should not be empty";
    }return null;
    
  }
  void sumbit(){
    if (RegsiterScreen.currentState!.validate()) {
      print("firstname:${firstnamecontroller.value}");
      print("lastname:${lastnamecontroller.value}");
      print("email:${emailcontroller.value}");
      print("dataofbirth:${dataofbirthcontroller.value}");
      print("password:${passwordcontroller.value}");

      
    }
  }
}
