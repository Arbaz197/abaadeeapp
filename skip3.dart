// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:abaadee_new_app/screens/homescreen/homescreen.dart';
import 'package:flutter/material.dart';

class SkipScreen3 extends StatefulWidget {
  const SkipScreen3({Key? key}) : super(key: key);

  @override
  _SkipScreen3State createState() => _SkipScreen3State();
}

class _SkipScreen3State extends State<SkipScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Theme.of(context).primaryColor,
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: const Center(
                  child: Text(
                "Blogs \n A Goldmine Of Information",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontStyle: FontStyle.italic),
              )),
            ),
          ),
          SizedBox(
            height: 120,
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Image.asset("assets/images/Group 8.png")),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: MaterialButton(
              minWidth: double.infinity,
              height: 50,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              color: Theme.of(context).primaryColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                //side: BorderSide(width: 0.8)
              ),
              child: Text("Lets Start",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
