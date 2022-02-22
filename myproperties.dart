// ignore_for_file: prefer_const_constructors, unused_import

import 'package:abaadee_new_app/widget/bottomTab.dart';
import 'package:abaadee_new_app/widget/drawerheader.dart';
import 'package:abaadee_new_app/widget/projectcard.dart';
import 'package:abaadee_new_app/widget/propertycard.dart';
import 'package:abaadee_new_app/widget/searchbar.dart';
import 'package:flutter/material.dart';

class MyProperties extends StatelessWidget {
  const MyProperties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(
          child: Text(
            "My Properties",
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
                        height: 15,
                      ),
                      ProjectCard(),
                      SizedBox(
                        height: 15,
                      ),
                      ProjectCard(),
                      SizedBox(
                        height: 15,
                      ),
                      ProjectCard(),
                      SizedBox(
                        height: 15,
                      ),
                      ProjectCard(),
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
