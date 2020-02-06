class ItensVendaModel {
  String numeroComanda;
  int codigoCliente;
  int mesa;
  List<Itens> itens;
  int codPDV;

  ItensVendaModel(
      {this.numeroComanda,
      this.codigoCliente,
      this.mesa,
      this.itens,
      this.codPDV});

  ItensVendaModel.fromJson(Map<String, dynamic> json) {
    numeroComanda = json['NumeroComanda'];
    codigoCliente = json['Codigo_Cliente'];
    mesa = json['Mesa'];
    if (json['Itens'] != null) {
      itens = new List<Itens>();
      json['Itens'].forEach((v) {
        itens.add(new Itens.fromJson(v));
      });
    }
    codPDV = json['Cod_PDV'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NumeroComanda'] = this.numeroComanda;
    data['Codigo_Cliente'] = this.codigoCliente;
    data['Mesa'] = this.mesa;
    if (this.itens != null) {
      data['Itens'] = this.itens.map((v) => v.toJson()).toList();
    }
    data['Cod_PDV'] = this.codPDV;
    return data;
  }
}

class Itens {
  int codigoVendaEspera;
  int produto;
  int vendedor;
  int quantidade;
  int valorUnitario;
  int valorTotal;
  String observacao;
  int valorDesconto;
  int valorAcrescimo;
  int deposito;

  Itens(
      {this.codigoVendaEspera,
      this.produto,
      this.vendedor,
      this.quantidade,
      this.valorUnitario,
      this.valorTotal,
      this.observacao,
      this.valorDesconto,
      this.valorAcrescimo,
      this.deposito});

  Itens.fromJson(Map<String, dynamic> json) {
    codigoVendaEspera = json['Codigo_Venda_Espera'];
    produto = json['Produto'];
    vendedor = json['Vendedor'];
    quantidade = json['Quantidade'];
    valorUnitario = json['Valor_Unitario'];
    valorTotal = json['Valor_Total'];
    observacao = json['Observacao'];
    valorDesconto = json['Valor_Desconto'];
    valorAcrescimo = json['Valor_Acrescimo'];
    deposito = json['Deposito'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Codigo_Venda_Espera'] = this.codigoVendaEspera;
    data['Produto'] = this.produto;
    data['Vendedor'] = this.vendedor;
    data['Quantidade'] = this.quantidade;
    data['Valor_Unitario'] = this.valorUnitario;
    data['Valor_Total'] = this.valorTotal;
    data['Observacao'] = this.observacao;
    data['Valor_Desconto'] = this.valorDesconto;
    data['Valor_Acrescimo'] = this.valorAcrescimo;
    data['Deposito'] = this.deposito;
    return data;
  }
}
