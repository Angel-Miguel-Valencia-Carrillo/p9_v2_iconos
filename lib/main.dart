import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Angel Valencia"),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
          centerTitle: true,
          backgroundColor: const Color(0xff18355c),
        ),
        body: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centra las filas verticalmente
                children: <Widget>[
                  const Text(
                    'Angel Valencia Mat:22308051280738 6j',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Color(0xff000000),
                    ),
                  ), // Primera fila
                  const SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Centra los iconos en la fila
                    children: <Widget>[
                      IconWithLabel(
                          icon: Icons.star,
                          label: 'Estrella',
                          color: Colors.yellow),
                      SizedBox(width: 70), // Espacio entre los iconos
                      IconWithLabel(
                          icon: Icons.favorite,
                          label: 'Favorito',
                          color: Colors.red),
                      SizedBox(width: 70),
                      IconWithLabel(
                          icon: Icons.abc_sharp,
                          label: 'Favorito',
                          color: Color(0xff36f4cb)),
                    ],
                  ),
                  SizedBox(height: 20), // Espacio entre las filas
                  // Segunda fila
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Centra los iconos en la fila
                    children: <Widget>[
                      IconWithLabel(
                          icon: Icons.thumb_up,
                          label: 'Me gusta',
                          color: Color(0xff2b8e2e)),
                      SizedBox(width: 70),
                      IconWithLabel(
                          icon: Icons.favorite,
                          label: 'Favorito',
                          color: Colors.red),
                      SizedBox(width: 70),
                      IconWithLabel(
                          icon: Icons.access_alarms_rounded,
                          label: 'alarma',
                          color: Color(0xff2ba5b5)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  } //fin widget
} //fin clase mis iconos

class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  IconWithLabel({required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: color), // Aquí se aplica el color
        SizedBox(height: 8), // Espacio entre el ícono y el texto
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
