import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
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
            "Welcome",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.00, horizontal: 28.00),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
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
                  height: 25,
                ),
                ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
