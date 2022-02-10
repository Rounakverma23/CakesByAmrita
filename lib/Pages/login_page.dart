import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilities/routes.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String name = "";
  bool changebutton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.purple[100],
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 120),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_image1.png",
                  color: Colors.purple[100],
                  colorBlendMode: BlendMode.darken,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Welcome $name",
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
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: () async {
                          setState(() {
                            changebutton = true;
                          });

                          await Future.delayed(Duration(milliseconds: 350));
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 350),
                          height: 31,
                          width: changebutton ? 35 : 100,
                          alignment: Alignment.center,
                          child: changebutton
                              ? Icon(Icons.done, color: Colors.white)
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              // shape: changebutton?BoxShape.circle:BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(
                                  changebutton ? 34 : 10)),
                        ),
                      )
                      // ElevatedButton(
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(minimumSize: Size(100, 30)),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
