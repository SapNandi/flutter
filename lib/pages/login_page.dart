import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 25.0, 0.0),
          child: Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Welcome",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter User name", labelText: "Username"),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  print("Saptarshi");
                },
                style: TextButton.styleFrom(),
                child: const Text("Login"),
              )
            ],
          ),
        )
      ],
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