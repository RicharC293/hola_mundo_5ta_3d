import 'package:flutter/material.dart';

class Listas extends StatelessWidget {
  const Listas({super.key});

  static const String routeName = "/listas";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// 1. SingleChildScrollView -> Scrolleable la columna
      /// 2. ListView -> Scrolleable -> children
      body: SingleChildScrollView(
        child: Column(
          spacing: 300,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.red,
            ),Container(
              width: double.infinity,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}