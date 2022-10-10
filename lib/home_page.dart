// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome guys to day $days!"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
