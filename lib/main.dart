import 'package:flutter/material.dart';
import 'package:frontapplication/home/Regsiter.dart';
import 'package:frontapplication/home/dashboard.dart';
import 'package:frontapplication/home/home.dart';
import 'package:frontapplication/home/login_.dart';
import 'package:frontapplication/home/register_success.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      getPages: [
        GetPage(name: '/', page:()=>Home()),
         GetPage(name: '/RegsiterScreen', page:()=>RegsiterScreen()),
          GetPage(name: '/RegisterSuccessScreen', page:()=>RegisterSuccessScreen()),
           GetPage(name: '/LoginScreen', page:()=>LoginScreen()),
            GetPage(name: '/DashBoardScreen', page:()=>DashBoardScreen()),
        
      ],
   
    );
  }
}
