import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Layout")),
      body: Column(
        children: [
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.amber,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ],
          ),
          Text("Mi primer Layout"),
          Container(
            width: 200,
            height: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
