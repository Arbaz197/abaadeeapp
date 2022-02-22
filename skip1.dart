// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, annotate_overrides

import 'dart:async';

import 'package:abaadee_new_app/screens/skipscreens/skip2.dart';
import 'package:flutter/material.dart';

class SkipScreen1 extends StatefulWidget {
  const SkipScreen1({Key? key}) : super(key: key);

  @override
  _SkipScreen1State createState() => _SkipScreen1State();
}

class _SkipScreen1State extends State<SkipScreen1> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SkipScreen2())));
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
                "Buy, Sell or Rent \n with just few Taps",
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
              child: Image.asset("assets/images/Group 6.png")),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
