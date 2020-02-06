import 'package:appmoura/models/todo.model.dart';
import 'package:appmoura/pages/pagamento/pagamento.page.dart';
import 'package:appmoura/services/api-moura.service.dart';
import 'package:appmoura/widget/text.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:progress_dialog/progress_dialog.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String usuario;
  String senha;
  ProgressDialog pr;
  bool usuarioOk;
  bool senhaOk;
  final apiService = BlocProvider.getDependency<ApiMouraService>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pr = new ProgressDialog(context);
    usuarioOk = true;
    senhaOk = true;
    pr.style(
        message: 'Carregando',
        borderRadius: 10.0,
        backgroundColor: Colors.white,
        progressWidget: CircularProgressIndicator(),
        elevation: 10.0,
        insetAnimCurve: Curves.easeInOut,
        progress: 0.0,
        maxProgress: 100.0,
        progressTextStyle: TextStyle(
            color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
        messageTextStyle: TextStyle(
            color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w600));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Texto(),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: TextField(
                onChanged: (value) {
                  usuario = value;
                },
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blueAccent,
                ),
                decoration: InputDecoration(
                    errorText: usuarioOk ? null : "Usuário obrigatório",
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: Icon(Icons.people),
                    hintText: "Usuário",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 32.0),
                        borderRadius: BorderRadius.circular(25.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white, width: 32.0),
                        borderRadius: BorderRadius.circular(25.0))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: TextField(
                onChanged: (value) {
                  senha = value;
                },
                obscureText: true,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blueAccent,
                ),
                decoration: InputDecoration(
                    errorText: senhaOk ? null : "Senha obrigatória",
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: Icon(Icons.people),
                    hintText: "Senha",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 32.0),
                        borderRadius: BorderRadius.circular(25.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white, width: 32.0),
                        borderRadius: BorderRadius.circular(25.0))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            OutlineButton(
              child: Text("Logar"),
              onPressed: () async {
                usuarioOk = true;
                senhaOk = true;

                if (usuario == null || usuario.length == 0) {
                  usuarioOk = false;
                }
                if (senha == null || senha.length == 0) {
                  senhaOk = false;
                }

                setState(() {
                  usuarioOk = usuarioOk;
                  senhaOk = senhaOk;
                });

                if (!usuarioOk || !senhaOk) {
                  return;
                }

                try {
                  pr.show();
                  var usuarioLogin = await apiService.logar(usuario, senha);
                  print(usuarioLogin.usuario.codigo);
                  pr.hide();

                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => PagamentoPage()));
                } catch (e) {
                  pr.hide();
                  Fluttertoast.showToast(
                      msg: "Usuário ou senha inválidos!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIos: 1,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      fontSize: 16.0);
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)),
            ),
          ],
        ),
      ),
    );
  }
}
