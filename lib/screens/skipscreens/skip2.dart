// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, annotate_overrides

import 'dart:async';

import 'package:abaadee_new_app/screens/skipscreens/skip3.dart';
import 'package:flutter/material.dart';

class SkipScreen2 extends StatefulWidget {
  const SkipScreen2({Key? key}) : super(key: key);

  @override
  _SkipScreen2State createState() => _SkipScreen2State();
}

class _SkipScreen2State extends State<SkipScreen2> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SkipScreen3())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Theme.of(context).primaryColor,
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: const Center(
                  child: Text(
                "Free Property \n Listings",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontStyle: FontStyle.italic),
              )),
            ),
          ),
          SizedBox(
            height: 170,
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Image.asset("assets/images/Group 7.png")),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
