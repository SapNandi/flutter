import 'package:flutter/material.dart';
import 'package:project1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 25.0, 0.0),
                child: Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 30,
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
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      style: TextButton.styleFrom(minimumSize: const Size(120, 40)),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
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