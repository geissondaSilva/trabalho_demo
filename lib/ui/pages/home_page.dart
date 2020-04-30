import 'package:flutter/material.dart';
import 'package:trabalho2/ui/pages/sobre_page.dart';
import 'package:trabalho2/ui/pages/tutoriais_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text("Seja Bem Vindo", style: TextStyle(
                  fontSize: 22
                )),
              )
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: RaisedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TutorialPage()),
                  );
                },
                child: Text("Iniciar demostração", style: TextStyle(color: Colors.white)),
                color: Colors.blue,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SobrePage()),
                  );
                },
                child: Text("Sobre o desenvolvedor", style: TextStyle(color: Colors.blue)),
              ),
            )
          ],
        ),
      ),
    );
  }
}