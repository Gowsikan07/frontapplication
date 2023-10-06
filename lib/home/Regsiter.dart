import 'package:flutter/material.dart';
import 'package:frontapplication/regsiter_controller.dart';
import 'package:get/get.dart';

class RegsiterScreen extends StatelessWidget {
  const RegsiterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RegsiterController rc = Get.put(RegsiterController());
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTER"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Form(
                    key: rc.RegsiterScreen,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: rc.firstnamecontroller,
                          validator: rc.firstnamevalidator,
                          decoration: InputDecoration(
                            fillColor: Colors.blue,
                            filled: true,
                            errorText: rc.firstnameerrortext.value,
                            hintText: " Enter name",
                            labelText: "First name",
                            prefixIcon: Icon(Icons.person_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                        ),
                        TextFormField(
                          controller: rc.lastnamecontroller,
                          validator: rc.lasttnamevalidator,
                          decoration: InputDecoration(
                            fillColor: Colors.blue,
                            filled: true,
                            errorText: rc.lastnameerrortext.value,
                            hintText: " Enter Last name",
                            labelText: "Last name",
                            prefixIcon: Icon(Icons.person_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                        ),
                        TextFormField(
                          controller: rc.dataofbirthcontroller,
                          validator: rc.dataofbirthvalidator,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            errorText: rc.dataofbirtherrortext.value,
                            hintText: " DOB",
                            labelText: "Data of birth",
                            prefixIcon: Icon(Icons.date_range),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                        ),
                        TextFormField(
                          controller: rc.emailcontroller,
                          validator: rc.emailvalidator,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            errorText: rc.dataofbirtherrortext.value,
                            hintText: " Enter email",
                            labelText: "Email",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                        ),
                        TextFormField(
                          controller: rc.passwordcontroller,
                          validator: rc.passwordvalidator,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            errorText: rc.passworderrortext.value,
                            hintText: " Enter Password",
                            labelText: "Password",
                            prefixIcon: Icon(Icons.numbers),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
                    Get.toNamed('/');
                   }, child: Text("cancel")),
                   ElevatedButton(onPressed: (){
                    Get.toNamed('/RegisterSuccessScreen');
                   }, child:Text("Regsiter"))
                ],
              ),
            )
           
          ],
        ),
      ),
    );
  }
}
