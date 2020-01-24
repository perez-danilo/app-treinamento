

import 'package:appmoura/models/todo.model.dart';
import 'package:appmoura/widget/text.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print(_counter);
    });
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
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blueAccent,
                ),
                decoration: InputDecoration(
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
                obscureText: true,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blueAccent,
                ),
                decoration: InputDecoration(
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
                var dio = Dio();
                Response response = await dio.get('https://jsonplaceholder.typicode.com/todos/1');
                print(response.data);
                TodoModel todo = TodoModel.fromJson(response.data);
                print(todo.id);
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