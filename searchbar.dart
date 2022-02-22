// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace

import 'package:abaadee_new_app/screens/filterscreen/searchfilterscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

Widget MySearch() {
  return Container(
    margin: EdgeInsets.only(top: 10, left: 20, right: 20),
    height: 51,
    child: Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "What are you looking for?",
              border: OutlineInputBorder(borderSide: BorderSide.none),
              fillColor: Color(0xffe6e6ec),
              filled: true,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xfffcb812),
          ),
          child: IconButton(
            icon: Icon(
              Icons.filter_list,
              color: Colors.black,
            ),
            onPressed: () {
              Get.to(() => SearchFilter());
            },
          ),
        ),
      ],
    ),
  );
}
