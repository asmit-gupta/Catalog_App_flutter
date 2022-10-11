// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoignPage extends StatefulWidget {
  const LoignPage({super.key});

  @override
  State<LoignPage> createState() => _LoignPageState();
}

class _LoignPageState extends State<LoignPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome $name",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),

                InkWell(
                  onTap: (() {
                    setState(() {
                      changeButton = true;
                    });
                    // Navigator.pushNamed(context, MyRoutes.homeroute);
                  }),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 50,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                )
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeroute);
                //   },
                //   style: TextButton.styleFrom(
                //     minimumSize: Size(150, 40),
                //   ),
                //   child: Text("Login"),
                // )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
