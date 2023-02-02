import 'package:flutter/material.dart';
import 'package:project1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool flag = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        flag = true;
      });

      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);

      setState(() {
        flag = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 25.0, 0.0),
                  child: Image.asset(
                    "assets/images/hey.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $name",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter username", labelText: "Username"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }

                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Material(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(flag ? 25 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: flag ? 50 : 120,
                            height: flag ? 50 : 45,
                            alignment: Alignment.center,
                            child: flag
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}


// child: Center(
        //   child: Text(
        //     "Login Page",
        //     style: TextStyle(
        //       fontSize: 20,
        //       color: Colors.red,
        //       fontWeight: FontWeight.bold,
        //     ),
        //     textScaleFactor: 1.3,
        //   ),
        // ),

// ElevatedButton(
        //   onPressed: () {
        //     Navigator.pushNamed(context, MyRoutes.homeRoute);
        //   },
        //   style: TextButton.styleFrom(
        //       minimumSize: const Size(120, 40)),
        //   child: const Text(
        //     "Login",
        //     style: TextStyle(
        //       fontSize: 15,
        //     ),
        //   ),
        // )