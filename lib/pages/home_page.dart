// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
// import 'package:flutter_catalog/main.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 1;

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummylist[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
