import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextoPage extends StatefulWidget {
  @override
  _TextoPageState createState() => _TextoPageState();
}

class _TextoPageState extends State<TextoPage> {

  final controller = PageController();

  _launchURL() async {
    const url = 'https://www.youtube.com/watch?v=c1xLMaTUWCY';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Box"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView(
                controller: controller,
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        "Container",
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Image(image: AssetImage('assets/text.png')),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: FlatButton(
                        child: Text("Ver video"),
                        onPressed: _launchURL,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Proximo"),
                    onPressed: () {
                      controller.nextPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeOut);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}