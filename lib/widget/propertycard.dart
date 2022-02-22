// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, unnecessary_const, prefer_const_constructors

import 'package:abaadee_new_app/screens/propertydetailscreen/propertydetail.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Property_Card extends StatelessWidget {
  const Property_Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => PropertyDetail());
      },
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.83,
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
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width * 0.83,
              decoration: BoxDecoration(
                  color: Colors.grey[700],
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/images/north vista phase ii connecting.png'))),
            ),
            Positioned(
              top: MediaQuery.of(context).size.width * 0.04,
              left: MediaQuery.of(context).size.width * 0.78,
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.favorite_border_outlined,
                  color: Color(0xfffcb812),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width * 0.01,
              left: MediaQuery.of(context).size.width * 0.74,
              child: CircleAvatar(
                backgroundColor: Color(0xfffcb812),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.navigation,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width * 0.01,
              left: MediaQuery.of(context).size.width * 0.62,
              child: CircleAvatar(
                backgroundColor: Color(0xfffcb812),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.share_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 220, left: 20),
            child: Column(
              children: [
                Row(
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
