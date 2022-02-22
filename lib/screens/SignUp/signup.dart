// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:abaadee_new_app/screens/LoginScreen/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.17,
                width: MediaQuery.of(context).size.width * 1,
                color: Color(0xfffcb812),
                child: Center(
                  child: Text("ABAADEE.COM",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 44)),
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              "Register Your Free ",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ABAADEE.COM ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                Text(
                  "account ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: <Widget>[
                  inputfile(label: "First Name*"),
                  SizedBox(height: 12),
                  inputfile(label: "Last Name*"),
                  SizedBox(height: 12),
                  inputfile(label: "Email*"),
                  SizedBox(height: 12),
                  inputfile(label: "Contact No*"),
                  SizedBox(height: 12),
                  inputfile(label: "Password*", obscuretext: true),
                  SizedBox(height: 12),
                  inputfile(label: "Confirm Password*", obscuretext: true),
                  SizedBox(height: 12),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 50,
                onPressed: () {
                  Get.to(() => LoginPage());
                },
                color: Colors.black54,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                    side: BorderSide(width: 0.8)),
                child: Text("Sign Un",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    )),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ? ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => LoginPage());
                  },
                  child: Container(
                    child: Text(
                      "Login here",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ],
        )));
  }
}

Widget inputfile({label, obscuretext = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: Colors.black87,
        ),
      ),
      SizedBox(height: 5),
      TextField(
        obscureText: obscuretext,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey,
            )),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      )
    ],
  );
}


//  padding: EdgeInsets.symmetric(horizontal: 40),
//           height: MediaQuery.of(context).size.height - 50,
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Column(
//                 children: <Widget>[
//                   Text(
//                     "SignUp",
//                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     "Create an Account , it's free",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                       color: Colors.grey[700],
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 children: <Widget>[
//                   inputfile(label: "Username"),
//                   inputfile(label: "Email"),
//                   inputfile(label: "Password", obscuretext: true),
//                   inputfile(label: "Confirm Password", obscuretext: true),
//                 ],
//               ),
//               Container(
//                 padding: EdgeInsets.only(top: 0, left: 0),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(50),
//                     border: Border(
//                       bottom: BorderSide(color: Colors.black),
//                       top: BorderSide(color: Colors.black),
//                       left: BorderSide(color: Colors.black),
//                       right: BorderSide(color: Colors.black),
//                     )),
//                 child: MaterialButton(
//                   minWidth: double.infinity,
//                   height: 60,
//                   onPressed: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => LoginPage()));
//                   },
//                   color: Color(0xfffcb812),
//                   elevation: 0,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                   child: Text("Signup",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 18,
//                         color: Colors.white,
//                       )),
//                 ),
//               ),
//             ],
//           ),
//         ),