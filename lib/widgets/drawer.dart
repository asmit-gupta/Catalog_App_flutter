// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  // const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // const imageUrl = "https://avatars.githubusercontent.com/u/76779874?v=4";
    const imageUrl =
        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Asmit Gupta"),
                accountEmail: Text("asmitwrites@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Contact Us",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
