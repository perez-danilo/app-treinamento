import 'package:appmoura/shared/app.bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class PagamentoPage extends StatefulWidget {
  @override
  _PagamentoPageState createState() => _PagamentoPageState();
}

class _PagamentoPageState extends State<PagamentoPage> {
  @override
  final bloc = BlocProvider.getBloc<AppBloc>();

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
            body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.check_circle)),
              OutlineButton(
                child: Text("bloc"),
                onPressed: () {
                  bloc.setData("bloc");
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}
