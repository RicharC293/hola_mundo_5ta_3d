import 'package:flutter/material.dart';

class CenterLayout extends StatelessWidget {
  const CenterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Centrar",
          style: TextStyle(color: Colors.brown, fontSize: 32),
        ),
      ),
    );
  }
}
