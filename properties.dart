// ignore_for_file: prefer_const_constructors, unused_import

import 'package:abaadee_new_app/screens/LoginScreen/login.dart';
import 'package:abaadee_new_app/widget/bottomTab.dart';
import 'package:abaadee_new_app/widget/drawerheader.dart';
import 'package:abaadee_new_app/widget/projectcard.dart';
import 'package:abaadee_new_app/widget/propertycard.dart';
import 'package:abaadee_new_app/widget/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Properties extends StatelessWidget {
  const Properties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(
          child: Text(
            "Properties",
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomTab(),
      drawer: NavigationDrawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MySearch(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(padding: EdgeInsets.only(left: 16)),
                  Text(
                    "Latest Properties",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
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
                      ProjectCard(),
                      SizedBox(
                        height: 5,
                      ),
                      ProjectCard(),
                      SizedBox(
                        height: 5,
                      ),
                      ProjectCard(),
                      SizedBox(
                        height: 5,
                      ),
                      ProjectCard(),
                      SizedBox(
                        height: 5,
                      ),
                      ProjectCard(),
                      SizedBox(
                        height: 5,
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
