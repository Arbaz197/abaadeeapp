// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(
            child: Text(
          "About Us",
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        )),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/abaadee-logo-black.png"),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              "datadfghjsduhjuyrtytyufghjuf6tyuihjkiur54sdfyghjiot65er6tyuhijkuytdrtyghjoiusrdtfghj",
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
