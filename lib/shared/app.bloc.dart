import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';

class AppBloc extends BlocBase {
  final StreamController<String> _valor = new StreamController<String>();
  Stream get outValor => _valor.stream;

  setData(value) {
    print(value);
    _valor.add(value);
  }

  @override
  void dispose() {
    _valor.close();
    super.dispose();
  }
}
