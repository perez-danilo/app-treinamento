import 'package:appmoura/models/itens-venda.model.dart';
import 'package:appmoura/services/api-moura.service.dart';
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
  final apiService = BlocProvider.getDependency<ApiMouraService>();

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
              OutlineButton(
                child: Text("Gravar itens"),
                onPressed: () async {
                  ItensVendaModel itensVenda = new ItensVendaModel();
                  itensVenda.codigoCliente = 2;
                  itensVenda.codPDV = 0;
                  itensVenda.mesa = 3;
                  itensVenda.numeroComanda = "1";
                  itensVenda.itens = [];
                  itensVenda.itens.add(new Itens(
                    codigoVendaEspera: 0,
                    deposito: 0,
                    observacao: "",
                    produto: 2,
                    quantidade: 10,
                    valorAcrescimo: 0,
                    valorDesconto: 0,
                    valorTotal: 20,
                    valorUnitario: 2,
                    vendedor: 0,
                  ));
                  var itens = await apiService.gravaItensVenda(itensVenda);
                  print(itens);
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}
