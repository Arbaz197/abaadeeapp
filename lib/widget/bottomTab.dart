// ignore_for_file: prefer_const_constructors, file_names, deprecated_member_use

import 'package:flutter/material.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({Key? key}) : super(key: key);

  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 1,
      color: Theme.of(context).primaryColor,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFfcb812),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(.60),

        onTap: (value) {
          // Respond to item press.
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            title: Text('Projects'),
            icon: Icon(Icons.home_work_rounded),
          ),
          BottomNavigationBarItem(
            title: Text('Favroite'),
            icon: Icon(Icons.favorite_border_outlined),
          ),
          BottomNavigationBarItem(
            title: Text('Properties'),
            icon: Icon(Icons.home_work_outlined),
          ),
        ],
      ),
    );
  }
}
