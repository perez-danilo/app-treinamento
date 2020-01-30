import 'package:appmoura/pages/home.page.dart';
import 'package:appmoura/pages/venda/venda.page.dart';
import 'package:appmoura/shared/app.bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: VendaPage(),
      ),
      blocs: [
        Bloc((i) => AppBloc()),
      ],
      dependencies: [],
    );
  }
}
