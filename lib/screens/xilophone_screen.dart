import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XilophoneHome extends StatelessWidget {
  const XilophoneHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "XylophoneApp",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            buildTecla(Colors.red, 1),
            buildTecla(Colors.green, 2),
            buildTecla(Colors.yellow, 3),
            buildTecla(Colors.orange, 4),
            buildTecla(Colors.blue, 5),
            buildTecla(const Color.fromARGB(255, 150, 0, 145), 6),
            buildTecla(Colors.pink, 7),
          ],
        )
        /* Center(
        child: ElevatedButton(
            onPressed: () {
              print("boton presionado");
              AudioPlayer sonido = AudioPlayer();
              sonido.play(AssetSource("sounds/note1.wav"));
            },
            child: Text("click")),
      ), */
        );
  }

  Widget buildTecla(Color color, int nota) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        AudioPlayer sonido = AudioPlayer();
        sonido.play(AssetSource("sounds/note$nota.wav"));
      },
      child: Container(
        color: color,
      ),
    ));
  }
}
