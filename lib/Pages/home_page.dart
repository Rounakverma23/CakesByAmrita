import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name = "Amrita";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Cakes By Amrita           "),
        ),
      ),
      body: Center(
        child: Text(
          ("Cakes by $name"),
          style: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            color: Colors.black,
            wordSpacing: 1,
            letterSpacing: 3,
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
