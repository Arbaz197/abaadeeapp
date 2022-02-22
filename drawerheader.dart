// ignore: unused_import

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_declarations, no_duplicate_case_values, unused_import, duplicate_ignore

import 'package:abaadee_new_app/screens/Aboutus/aboutus.dart';
import 'package:abaadee_new_app/screens/Blogs/blogs.dart';
import 'package:abaadee_new_app/screens/LoginScreen/login.dart';
import 'package:abaadee_new_app/screens/MyProjects/projects.dart';
import 'package:abaadee_new_app/screens/MyProperties/myproperties.dart';
import 'package:abaadee_new_app/screens/Properties/properties.dart';
import 'package:abaadee_new_app/screens/homescreen/homescreen.dart';
import 'package:abaadee_new_app/widget/blogcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Image.asset("assets/images/abaadee-logo-black.png"),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                border: Border(
                    bottom: BorderSide(width: 0.5, color: Colors.black))),
          ),
          Column(
            children: [
              buildMenuItem(
                text: "Home",
                icon: Icons.home_outlined,
                color: Colors.black,
                OnClicked: () => selectedItem(context, 0),
              ),
              SizedBox(
                height: 0.01,
              ),
              buildMenuItem(
                text: "Add Property",
                color: Colors.black,
                icon: Icons.add,
                OnClicked: () => selectedItem(context, 1),
              ),
              SizedBox(
                height: 0.01,
              ),
              buildMenuItem(
                text: "My Properties",
                color: Colors.black,
                icon: Icons.home_work_outlined,
                OnClicked: () => selectedItem(context, 2),
              ),
              buildMenuItem(
                text: "Projects",
                color: Colors.black,
                icon: Icons.business_rounded,
                OnClicked: () => selectedItem(context, 3),
              ),
              buildMenuItem(
                text: "Propeties",
                color: Colors.black,
                icon: Icons.business_sharp,
                OnClicked: () => selectedItem(context, 4),
              ),
              buildMenuItem(
                text: "Agencies",
                color: Colors.black,
                icon: Icons.home_work_sharp,
                OnClicked: () => selectedItem(context, 5),
              ),
              buildMenuItem(
                text: "Builders",
                color: Colors.black,
                icon: Icons.home_work_outlined,
                OnClicked: () => selectedItem(context, 6),
              ),
              buildMenuItem(
                text: "My Favorite",
                color: Colors.black,
                icon: Icons.favorite_border,
                OnClicked: () => selectedItem(context, 7),
              ),
              buildMenuItem(
                text: "Blogs",
                color: Colors.black,
                icon: Icons.home_work_sharp,
                OnClicked: () => selectedItem(context, 8),
              ),
              buildMenuItem(
                text: "About us",
                color: Colors.black,
                icon: Icons.info_outline,
                OnClicked: () => selectedItem(context, 9),
              ),
              buildMenuItem(
                  text: "Log Out",
                  color: Colors.black,
                  icon: Icons.logout,
                  OnClicked: () => selectedItem(context, 10)),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildMenuItem(
      // ignore: non_constant_identifier_names
      {required String text,
      required IconData icon,
      required Color color,
      // ignore: non_constant_identifier_names
      VoidCallback? OnClicked}) {
    final color = Colors.black;
    final hovercolor = Colors.black;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text,
          style: TextStyle(color: color, fontWeight: FontWeight.w900)),
      hoverColor: hovercolor,
      onTap: OnClicked,
    );
  }

  selectedItem(BuildContext context, int i) {
    switch (i) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 1:
        Get.to(() => LoginPage());
        break;
      case 2:
        Get.to(() => MyProperties());
        break;
      case 3:
        Get.to(() => MyProjects());
        break;
      case 4:
        Get.to(() => Properties());
        break;
      case 5:
        //Get.to(() => BlogCard());
        break;
      case 6:
        //Get.to(() => BlogCard());
        break;
      case 7:
        // Get.to(() => BlogCard());
        break;
      case 8:
        Get.to(() => Blogs());
        break;
      case 9:
        Get.to(() => AboutUs());
        break;
      case 10:
        // Get.to(() => BlogCard());
        break;
    }
  }
}
