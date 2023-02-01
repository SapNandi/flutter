import 'package:flutter/material.dart';
import 'package:project1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool flag = false;

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
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          flag = true;
                        });
                        await Future.delayed(Duration(milliseconds: 600));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 600),
                        width: flag ? 50 : 120,
                        height: flag ? 50 : 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(flag ? 25 : 8),
                        ),
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
                    )

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