import 'package:flutter/material.dart';
import 'package:trabalho2/ui/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController login = new TextEditingController();
  TextEditingController senha = new TextEditingController();

  _entrar() {
    if(login.text == "unidep" && senha.text == "unidep") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
  }

  void esqueciSenha() {
    showDialog(
      context: context,
      builder: (builder) {
        // retorna um objeto do tipo Dialog
        return AlertDialog(
          title: new Text("Minha senha"),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("Usuario: unidep"),
              Text("Senha: unidep")
            ],
          ),
          actions: <Widget>[
            // define os botões na base do dialogo
            new FlatButton(
              child: new Text("Fechar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          padding: EdgeInsets.only(right: 24, left: 24),
          child: SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text("Login", style: TextStyle(
                      fontSize: 48,
                      color: Theme.of(context).primaryColor
                    )),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextFormField(
                        controller: login,
                        decoration: InputDecoration(
                          hintText: "Informe o usuário",
                          labelText: "Usuário"
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        controller: senha,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Informe sua senha",
                          labelText: "Senha"
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FlatButton(
                            onPressed: esqueciSenha,
                            child: Text("Esqueci minha senha", style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).accentColor
                            )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                        onPressed: _entrar,
                        child: Text("Entrar", style: TextStyle(
                          fontSize: 24,
                          color: Colors.white
                        )),
                        color: Theme.of(context).primaryColor,
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
