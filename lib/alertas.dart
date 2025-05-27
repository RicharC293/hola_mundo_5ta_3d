import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// En flutter puedes crear alertas tipo modal y bottom sheet
// https://api.flutter.dev/flutter/material/AlertDialog-class.html
// https://api.flutter.dev/flutter/material/BottomSheet-class.html

class Alertas extends StatelessWidget {
  const Alertas({super.key});

  static const String routeName = "/alertas";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Los botones son desde material
            // TextButton es un botón que representa un botón tipo texto sin estilos.
            TextButton(
              onPressed: () {
                // Mostrar una alerta
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Alerta"),
                      content: Text("Esta es una alerta de ejemplo"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Cerrar la alerta
                          },
                          child: Text("Cerrar"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Abrir alerta"),
            ),

            // IconButton se usa para crear un botón de icono
            IconButton(
              onPressed: () {
                // Mostrar un bottom sheet
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: 200,
                      child: Center(child: Text("Este es un bottom sheet")),
                    );
                  },
                );
              },
              icon: Icon(Icons.add),
            ),

            // FilledButton este tipo de botones es de uso general
            FilledButton(
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text("Alerta Cupertino"),
                      content: Text(
                        "Esta es una alerta de ejemplo estilo Cupertino",
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Cerrar la alerta
                          },
                          child: Text("Cerrar"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Abrir Alerta cupertino"),
            ),

            // Hay un sin número de botones que puedes usar, según el diseño que tu quieras
            // https://api.flutter.dev/flutter/material/ButtonStyle-class.html

            // Actualizar los estilos de los botones
            // Lo puedes hacer en el tema, pero si el cambio es puntual usa esto:
            FilledButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.red),
                textStyle: WidgetStateProperty.resolveWith((value) {
                  if (value.contains(WidgetState.pressed)) {
                    return TextStyle(fontWeight: FontWeight.bold);
                  }
                  return TextStyle(fontSize: 20);
                }),
                foregroundColor: WidgetStateColor.resolveWith((value) {
                  if (value.contains(WidgetState.pressed)) {
                    return Colors.purple;
                  }
                  return Colors.amberAccent;
                }),
              ),
              child: Text("Otro botón con estilos"),
            ),
          ],
        ),
      ),
    );
  }
}
