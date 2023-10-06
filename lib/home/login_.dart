import 'package:flutter/material.dart';
import 'package:frontapplication/home/login_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  LoginController lc = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Text("LOGIN"),
          Row(
            children: [
              Expanded(
                child: Form(
                    key: lc.LoginScreen,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: lc.email1controller,
                          validator: lc.email1validator,
                          decoration: InputDecoration(
                              fillColor: Colors.white10,
                              filled: true,
                              errorText: lc.email1errortext.value,
                              hintText: "Enter email",
                              labelText: "Email",
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                        ),
                        TextFormField(
                          controller: lc.password1controller,
                          validator: lc.password1validator,
                          decoration: InputDecoration(
                              fillColor: Colors.white10,
                              filled: true,
                              errorText: lc.password1errortext.value,
                              hintText: "Enter password",
                              labelText: "password",
                              prefixIcon: Icon(Icons.numbers),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                        ),
                      ],
                    ),
                    ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: 
              (){Get.toNamed('/');
              }, 
              child: Text("Cancel")),
              ElevatedButton(onPressed: 
              (){Get.back();
              }, 
              child: Text("login"))

            ],
          )
        ],
      )),
    );
  }
}
