// ignore_for_file: prefer_const_constructors

import 'package:abaadee_new_app/widget/blogcard.dart';
import 'package:flutter/material.dart';

class Blogs extends StatelessWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(
          child: Text(
            "ABAADEE BLOGS",
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: Center(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      BlogCard(),
                      SizedBox(
                        height: 15,
                      ),
                      BlogCard(),
                      SizedBox(
                        height: 15,
                      ),
                      BlogCard(),
                      SizedBox(
                        height: 15,
                      ),
                      BlogCard(),
                      SizedBox(
                        height: 15,
                      ),
                      BlogCard(),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
