import 'package:flutter/material.dart';

class SobrePage extends StatefulWidget {
  @override
  _SobrePageState createState() => _SobrePageState();
}

class _SobrePageState extends State<SobrePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre mim"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Me chamo Geisson Mateus da Silva, tenho 20 anos, e sou desenvolvedor a quase 3 anos."),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Este aplicativo foi desenvolvido com objeto de aprendizado para a materia de desenvolvimento mobile."),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Nele podemos desfruturar de tutorias sobre os componentes utilizados no flutter."),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Contato: geisonmsilva12@gmail.com"),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}