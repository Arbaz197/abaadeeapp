// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:abaadee_new_app/screens/propertydetailscreen/propertydetail.dart';
import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PropertyDetail()));
      },
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ]),
          ),
          Stack(children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey[700],
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/images/north vista phase ii connecting.png'))),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 220, left: 20),
            child: Column(
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Starting From ",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    Text(
                      "PKR 4 Lkah",
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xfffcb812),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
