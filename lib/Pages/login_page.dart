import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilities/routes.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 120),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/Login_image.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Welcome To Cakes By Amrita",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.00, horizontal: 28.00),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Email",
                          labelText: "Email",
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        child: Text("Login"),
                        style: TextButton.styleFrom(minimumSize: Size(100, 30)),
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
