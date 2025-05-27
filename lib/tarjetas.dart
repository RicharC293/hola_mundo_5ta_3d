import 'package:flutter/material.dart';

class Tarjetas extends StatelessWidget {
  const Tarjetas({super.key});

  static const String routeName = "/tarjetas";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tarjetas")),
      body: Column(
        spacing: 24,
        children: [
          // Tarjeta 1 - Tarjeta común
          Card(
            child: Column(
              children: [Text("Título"), Text("Contenido de la tarjeta")],
            ),
          ),
          // Tarjeta 2 - Estilos
          Card(
            color: Colors.brown,
            elevation: 3,
            child: Column(
              children: [Text("Título"), Text("Contenido de la tarjeta")],
            ),
          ),
          // Tarjeta 3 - Uso del margin y del padding
          Card(
            color: Colors.amber,
            elevation: 3,
            margin: EdgeInsets.all(30),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [Text("Título"), Text("Contenido de la tarjeta")],
              ),
            ),
          ),
          // Tarea - crea la bandera del ecuador con tarjetas
          Column(
            children: [
              Card(
                color: Colors.yellow,
                margin: EdgeInsets.zero,
                child: SizedBox(height: 100, width: 300),
              ),
              Card(
                color: Colors.blue,
                margin: EdgeInsets.zero,

                child: SizedBox(height: 50, width: 300),
              ),
              Card(
                color: Colors.red,
                margin: EdgeInsets.zero,
                child: SizedBox(height: 50, width: 300),
              ),
            ],
          ),
          // Reto - debajo de este comentario crea una tarjeta, pero agrega en ella una imagen
        ],
      ),
    );
  }
}
