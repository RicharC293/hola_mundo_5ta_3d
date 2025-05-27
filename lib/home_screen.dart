import 'package:flutter/material.dart';
import 'package:hola_mundo/layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = "/home_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Layout.routeName);
            },
            child: const Text("Listas"),
          ),
        ],
      ),
    );
  }
}
