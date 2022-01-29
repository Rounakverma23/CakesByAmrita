import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Rounak";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cakes By Amrita"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome $days days of Flutter by $name."),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
