// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar()
      : preferredSize = Size.fromHeight(60.0),
        super();

  @override
  final Size preferredSize;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      title: Center(
        child: Image.asset(
          "assets/images/abaadee-logo-black.png",
          height: 60,
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
    );
  }
}
