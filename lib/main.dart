import 'package:appmoura/pages/home.page.dart';
import 'package:appmoura/pages/pagamento/pagamento.page.dart';
import 'package:appmoura/pages/usuarios/usuarios.page.dart';
import 'package:appmoura/pages/venda/venda.page.dart';
import 'package:appmoura/services/api-moura.service.dart';
import 'package:appmoura/services/api.services.dart';
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
        home: PagamentoPage(),
      ),
      blocs: [
        Bloc((i) => AppBloc()),
      ],
      dependencies: [
        Dependency((i) => ApiService()),
        Dependency((i) => ApiMouraService()),
      ],
    );
  }
}
