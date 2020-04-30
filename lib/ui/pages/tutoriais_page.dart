import 'package:flutter/material.dart';
import 'package:trabalho2/ui/pages/button_page.dart';
import 'package:trabalho2/ui/pages/icone_page.dart';
import 'package:trabalho2/ui/pages/texto_page.dart';

class TutorialPage extends StatefulWidget {
  @override
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutoriais"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.school),
              title: Text("Box"),
              subtitle: Text("Como a usar um widget de Container"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextoPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text("Column"),
              subtitle: Text("Como a usar um widget de column"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IconePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text("Botões"),
              subtitle: Text("Como a usar um widget de botão"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ButtonPage()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}