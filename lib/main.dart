import 'package:flutter/material.dart';
import 'package:hola_mundo/center.dart';
import 'package:hola_mundo/layout.dart';
import 'package:hola_mundo/listas.dart';
import 'package:hola_mundo/listas_list_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ListasListView(),
      /*home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
          centerTitle: false,
        ),
        body: Center(child: Text('Hello World $_contador')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _contador = _contador + 1;
            setState(() {});
          },
          child: Icon(Icons.account_balance_sharp),
        ),
      ),*/
    );
  }
}
