import 'package:flutter/material.dart';
import 'package:project1/widgets/drawer.dart';

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
      drawer: MyDrawer(),
    );
  }
}
