class UsuarioModel {
  int codigo;
  String nome;
  String abreviacao;
  String senha;

  UsuarioModel({this.codigo, this.nome, this.abreviacao, this.senha});

  UsuarioModel.fromJson(Map<String, dynamic> json) {
    codigo = json['Codigo'];
    nome = json['Nome'];
    abreviacao = json['Abreviacao'];
    senha = json['Senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Codigo'] = this.codigo;
    data['Nome'] = this.nome;
    data['Abreviacao'] = this.abreviacao;
    data['Senha'] = this.senha;
    return data;
  }
}
