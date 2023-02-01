import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Saptarshi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PseudoApp"),
      ),
      body: Center(
        child: Container(
          child: Text("$name Nandi $days $name"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
