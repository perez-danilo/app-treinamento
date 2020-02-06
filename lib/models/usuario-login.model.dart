class UsuarioLoginModel {
  Usuario usuario;
  Empresa empresa;
  List<Empresas> empresas;
  List<Menus> menus;
  String versao;
  Banco banco;

  UsuarioLoginModel(
      {this.usuario,
      this.empresa,
      this.empresas,
      this.menus,
      this.versao,
      this.banco});

  UsuarioLoginModel.fromJson(Map<String, dynamic> json) {
    usuario =
        json['usuario'] != null ? new Usuario.fromJson(json['usuario']) : null;
    versao = json['versao'];
    banco = json['banco'] != null ? new Banco.fromJson(json['banco']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.usuario != null) {
      data['usuario'] = this.usuario.toJson();
    }
    if (this.empresa != null) {
      data['empresa'] = this.empresa.toJson();
    }
    if (this.empresas != null) {
      data['empresas'] = this.empresas.map((v) => v.toJson()).toList();
    }
    if (this.menus != null) {
      data['menus'] = this.menus.map((v) => v.toJson()).toList();
    }
    data['versao'] = this.versao;
    if (this.banco != null) {
      data['banco'] = this.banco.toJson();
    }
    return data;
  }
}

class Usuario {
  int codigo;
  String nome;
  String abreviacao;
  bool usuarioWindows;
  bool demitido;
  bool contador;
  bool franqueador;
  bool franqueado;
  bool freelancer;
  bool semSenha;
  Null dataSenhaComplexa;
  bool isMoura;
  bool preencheuClasse;
  bool isInativo;
  bool ignorarDuplicidade;

  Usuario(
      {this.codigo,
      this.nome,
      this.abreviacao,
      this.usuarioWindows,
      this.demitido,
      this.contador,
      this.franqueador,
      this.franqueado,
      this.freelancer,
      this.semSenha,
      this.dataSenhaComplexa,
      this.isMoura,
      this.preencheuClasse,
      this.isInativo,
      this.ignorarDuplicidade});

  Usuario.fromJson(Map<String, dynamic> json) {
    codigo = json['Codigo'];
    nome = json['Nome'];
    abreviacao = json['Abreviacao'];
    usuarioWindows = json['Usuario_Windows'];
    demitido = json['Demitido'];
    contador = json['Contador'];
    franqueador = json['Franqueador'];
    franqueado = json['Franqueado'];
    freelancer = json['Freelancer'];
    semSenha = json['Sem_Senha'];
    dataSenhaComplexa = json['Data_Senha_Complexa'];
    isMoura = json['isMoura'];
    preencheuClasse = json['PreencheuClasse'];
    isInativo = json['IsInativo'];
    ignorarDuplicidade = json['IgnorarDuplicidade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Codigo'] = this.codigo;
    data['Nome'] = this.nome;
    data['Abreviacao'] = this.abreviacao;
    data['Usuario_Windows'] = this.usuarioWindows;
    data['Demitido'] = this.demitido;
    data['Contador'] = this.contador;
    data['Franqueador'] = this.franqueador;
    data['Franqueado'] = this.franqueado;
    data['Freelancer'] = this.freelancer;
    data['Sem_Senha'] = this.semSenha;
    data['Data_Senha_Complexa'] = this.dataSenhaComplexa;
    data['isMoura'] = this.isMoura;
    data['PreencheuClasse'] = this.preencheuClasse;
    data['IsInativo'] = this.isInativo;
    data['IgnorarDuplicidade'] = this.ignorarDuplicidade;
    return data;
  }
}

class Empresa {
  int codigo;
  String razaoSocial;
  String fantasia;
  bool inativo;
  String cnpj;
  String ie;
  String endereco;
  String bairro;
  int cidade;
  CidadeEntity cidadeEntity;
  String cep;
  String fone;
  String fax;
  String logotipo;
  double iss;
  double pis;
  double cofins;
  double ir;
  double csl;
  int simples;
  int diaIss;
  int diaPis;
  int diaCofins;
  int diaIr;
  int diaCsl;
  int diaSimples;
  int regTrib;
  String formaApuracaoLucroReal;
  int funruralAliquota;
  String funruralMensagem;
  int regTribIMendes;
  int codAtividade;
  int jucesp;
  Null dataJucesp;
  int licencas;
  Null dataVenda;
  Null contrato;
  String emailFiscal;
  String dataCadastroEcf;
  int croCadastroEcf;
  int numero;
  String contato;
  Null inscricaoCadastroContribuinte;
  String inscricaoMunicipal;
  bool padrao;
  bool icmsNf;
  String multilojaIp;
  String multilojaBanco;
  String multilojaSenha;
  String nomeContabilista;
  String cpfContabilista;
  String crcContabilista;
  String cnpjEscritorioContabilista;
  String cepContabilista;
  String enderecoContabilista;
  String numeroEnderecoContabilista;
  String complementoEnderecoContabilista;
  String bairroContabilista;
  String foneContabilista;
  String faxContabilista;
  String emailContabilista;
  int cidadeContabilista;
  String numeroSuframa;
  int tipoAtividade;
  int fkEmpresaFiscalSerieNf;
  int tipoEmpresa;
  String codigoFolhamatic;
  int codigoCliente;
  String slogan;
  int decretoPadrao;
  String caminhoMultilojaXml;
  int nOrdem;
  Null dataJunta;
  String empresaContador;
  String registroJunta;
  String ramoAtividade;
  int descontoIssqn;
  int regimeIncidencia;
  bool retencaoIss;
  int issMaiorQue;
  String nfeMsgLogotipo;
  int apuracaoPisCofins;
  bool spedPisCofinsUtilizar;
  int timeoutConexao;
  String loginNfp;
  String senhaNfp;
  int tipoNfp;
  Null licencaSanitaria;
  Null complemento;
  bool covisaConferidoEstoque;
  String tipo;
  String qtdeMaquinas;
  int codigoFornecedor;
  Null siteEmpresa;
  Null codigointernoedi;
  Null dataFechamentoAtual;
  Null cpfTransmissorSngpc;
  String dataCarga;
  int franquiaPerfilCadastro;
  int criterioApuracaoPisCofins;
  bool exibirCockPit;
  int empresaMatriz;
  Null usuarioAT;
  Null senhaAt;
  int capitalSocial;
  int pais;
  String dadosProcon;
  Null urlFoto;
  List<Null> iEOutrosEstados;
  bool integracaoSuperOn;
  int listaPrecoAPP;
  Null petzSigla;
  Null emailContato;
  bool possuiIVA;
  Null porte;
  Null numeroEmpresa;
  int regEspecialTrib;
  bool incentivadorCultural;
  Null classificacaoEstabelecimento;
  bool preencheuClasse;
  bool isInativo;
  bool ignorarDuplicidade;

  Empresa(
      {this.codigo,
      this.razaoSocial,
      this.fantasia,
      this.inativo,
      this.cnpj,
      this.ie,
      this.endereco,
      this.bairro,
      this.cidade,
      this.cidadeEntity,
      this.cep,
      this.fone,
      this.fax,
      this.logotipo,
      this.iss,
      this.pis,
      this.cofins,
      this.ir,
      this.csl,
      this.simples,
      this.diaIss,
      this.diaPis,
      this.diaCofins,
      this.diaIr,
      this.diaCsl,
      this.diaSimples,
      this.regTrib,
      this.formaApuracaoLucroReal,
      this.funruralAliquota,
      this.funruralMensagem,
      this.regTribIMendes,
      this.codAtividade,
      this.jucesp,
      this.dataJucesp,
      this.licencas,
      this.dataVenda,
      this.contrato,
      this.emailFiscal,
      this.dataCadastroEcf,
      this.croCadastroEcf,
      this.numero,
      this.contato,
      this.inscricaoCadastroContribuinte,
      this.inscricaoMunicipal,
      this.padrao,
      this.icmsNf,
      this.multilojaIp,
      this.multilojaBanco,
      this.multilojaSenha,
      this.nomeContabilista,
      this.cpfContabilista,
      this.crcContabilista,
      this.cnpjEscritorioContabilista,
      this.cepContabilista,
      this.enderecoContabilista,
      this.numeroEnderecoContabilista,
      this.complementoEnderecoContabilista,
      this.bairroContabilista,
      this.foneContabilista,
      this.faxContabilista,
      this.emailContabilista,
      this.cidadeContabilista,
      this.numeroSuframa,
      this.tipoAtividade,
      this.fkEmpresaFiscalSerieNf,
      this.tipoEmpresa,
      this.codigoFolhamatic,
      this.codigoCliente,
      this.slogan,
      this.decretoPadrao,
      this.caminhoMultilojaXml,
      this.nOrdem,
      this.dataJunta,
      this.empresaContador,
      this.registroJunta,
      this.ramoAtividade,
      this.descontoIssqn,
      this.regimeIncidencia,
      this.retencaoIss,
      this.issMaiorQue,
      this.nfeMsgLogotipo,
      this.apuracaoPisCofins,
      this.spedPisCofinsUtilizar,
      this.timeoutConexao,
      this.loginNfp,
      this.senhaNfp,
      this.tipoNfp,
      this.licencaSanitaria,
      this.complemento,
      this.covisaConferidoEstoque,
      this.tipo,
      this.qtdeMaquinas,
      this.codigoFornecedor,
      this.siteEmpresa,
      this.codigointernoedi,
      this.dataFechamentoAtual,
      this.cpfTransmissorSngpc,
      this.dataCarga,
      this.franquiaPerfilCadastro,
      this.criterioApuracaoPisCofins,
      this.exibirCockPit,
      this.empresaMatriz,
      this.usuarioAT,
      this.senhaAt,
      this.capitalSocial,
      this.pais,
      this.dadosProcon,
      this.urlFoto,
      this.iEOutrosEstados,
      this.integracaoSuperOn,
      this.listaPrecoAPP,
      this.petzSigla,
      this.emailContato,
      this.possuiIVA,
      this.porte,
      this.numeroEmpresa,
      this.regEspecialTrib,
      this.incentivadorCultural,
      this.classificacaoEstabelecimento,
      this.preencheuClasse,
      this.isInativo,
      this.ignorarDuplicidade});

  Empresa.fromJson(Map<String, dynamic> json) {
    codigo = json['Codigo'];
    razaoSocial = json['Razao_Social'];
    fantasia = json['Fantasia'];
    inativo = json['Inativo'];
    cnpj = json['Cnpj'];
    ie = json['Ie'];
    endereco = json['Endereco'];
    bairro = json['Bairro'];
    cidade = json['Cidade'];
    cidadeEntity = json['CidadeEntity'] != null
        ? new CidadeEntity.fromJson(json['CidadeEntity'])
        : null;
    cep = json['Cep'];
    fone = json['Fone'];
    fax = json['Fax'];
    logotipo = json['Logotipo'];
    iss = json['Iss'];
    pis = json['Pis'];
    cofins = json['Cofins'];
    ir = json['Ir'];
    csl = json['Csl'];
    simples = json['Simples'];
    diaIss = json['Dia_Iss'];
    diaPis = json['Dia_Pis'];
    diaCofins = json['Dia_Cofins'];
    diaIr = json['Dia_Ir'];
    diaCsl = json['Dia_Csl'];
    diaSimples = json['Dia_Simples'];
    regTrib = json['Reg_Trib'];
    formaApuracaoLucroReal = json['Forma_Apuracao_Lucro_Real'];
    funruralAliquota = json['Funrural_Aliquota'];
    funruralMensagem = json['Funrural_Mensagem'];
    regTribIMendes = json['Reg_Trib_iMendes'];
    codAtividade = json['Cod_Atividade'];
    jucesp = json['Jucesp'];
    dataJucesp = json['Data_Jucesp'];
    licencas = json['Licencas'];
    dataVenda = json['Data_Venda'];
    contrato = json['Contrato'];
    emailFiscal = json['Email_Fiscal'];
    dataCadastroEcf = json['Data_Cadastro_Ecf'];
    croCadastroEcf = json['Cro_Cadastro_Ecf'];
    numero = json['Numero'];
    contato = json['Contato'];
    inscricaoCadastroContribuinte = json['Inscricao_Cadastro_Contribuinte'];
    inscricaoMunicipal = json['Inscricao_Municipal'];
    padrao = json['Padrao'];
    icmsNf = json['Icms_Nf'];
    multilojaIp = json['Multiloja_Ip'];
    multilojaBanco = json['Multiloja_Banco'];
    multilojaSenha = json['Multiloja_Senha'];
    nomeContabilista = json['Nome_Contabilista'];
    cpfContabilista = json['Cpf_Contabilista'];
    crcContabilista = json['Crc_Contabilista'];
    cnpjEscritorioContabilista = json['Cnpj_Escritorio_Contabilista'];
    cepContabilista = json['Cep_Contabilista'];
    enderecoContabilista = json['Endereco_Contabilista'];
    numeroEnderecoContabilista = json['Numero_Endereco_Contabilista'];
    complementoEnderecoContabilista = json['Complemento_Endereco_Contabilista'];
    bairroContabilista = json['Bairro_Contabilista'];
    foneContabilista = json['Fone_Contabilista'];
    faxContabilista = json['Fax_Contabilista'];
    emailContabilista = json['Email_Contabilista'];
    cidadeContabilista = json['Cidade_Contabilista'];
    numeroSuframa = json['Numero_Suframa'];
    tipoAtividade = json['Tipo_Atividade'];
    fkEmpresaFiscalSerieNf = json['Fk_Empresa_Fiscal_Serie_Nf'];
    tipoEmpresa = json['Tipo_Empresa'];
    codigoFolhamatic = json['Codigo_Folhamatic'];
    codigoCliente = json['Codigo_Cliente'];
    slogan = json['Slogan'];
    decretoPadrao = json['Decreto_Padrao'];
    caminhoMultilojaXml = json['Caminho_Multiloja_Xml'];
    nOrdem = json['N_Ordem'];
    dataJunta = json['Data_Junta'];
    empresaContador = json['Empresa_Contador'];
    registroJunta = json['Registro_Junta'];
    ramoAtividade = json['Ramo_Atividade'];
    descontoIssqn = json['Desconto_Issqn'];
    regimeIncidencia = json['Regime_Incidencia'];
    retencaoIss = json['Retencao_Iss'];
    issMaiorQue = json['Iss_Maior_Que'];
    nfeMsgLogotipo = json['Nfe_Msg_Logotipo'];
    apuracaoPisCofins = json['Apuracao_Pis_Cofins'];
    spedPisCofinsUtilizar = json['Sped_Pis_Cofins_Utilizar'];
    timeoutConexao = json['Timeout_Conexao'];
    loginNfp = json['Login_Nfp'];
    senhaNfp = json['Senha_Nfp'];
    tipoNfp = json['Tipo_Nfp'];
    licencaSanitaria = json['Licenca_Sanitaria'];
    complemento = json['Complemento'];
    covisaConferidoEstoque = json['Covisa_Conferido_Estoque'];
    tipo = json['Tipo'];
    qtdeMaquinas = json['Qtde_Maquinas'];
    codigoFornecedor = json['Codigo_Fornecedor'];
    siteEmpresa = json['Site_Empresa'];
    codigointernoedi = json['Codigointernoedi'];
    dataFechamentoAtual = json['Data_Fechamento_Atual'];
    cpfTransmissorSngpc = json['Cpf_Transmissor_Sngpc'];
    dataCarga = json['Data_Carga'];
    franquiaPerfilCadastro = json['Franquia_Perfil_Cadastro'];
    criterioApuracaoPisCofins = json['Criterio_Apuracao_Pis_Cofins'];
    exibirCockPit = json['Exibir_CockPit'];
    empresaMatriz = json['Empresa_Matriz'];
    usuarioAT = json['Usuario_AT'];
    senhaAt = json['Senha_At'];
    capitalSocial = json['Capital_Social'];
    pais = json['Pais'];
    dadosProcon = json['Dados_Procon'];
    urlFoto = json['UrlFoto'];
    if (json['IE_OutrosEstados'] != null) {
      iEOutrosEstados = new List<Null>();
      json['IE_OutrosEstados'].forEach((v) {
        iEOutrosEstados.add(v);
      });
    }
    integracaoSuperOn = json['IntegracaoSuperOn'];
    listaPrecoAPP = json['Lista_Preco_APP'];
    petzSigla = json['Petz_Sigla'];
    emailContato = json['Email_Contato'];
    possuiIVA = json['Possui_IVA'];
    porte = json['Porte'];
    numeroEmpresa = json['Numero_Empresa'];
    regEspecialTrib = json['Reg_Especial_Trib'];
    incentivadorCultural = json['Incentivador_Cultural'];
    classificacaoEstabelecimento = json['Classificacao_Estabelecimento'];
    preencheuClasse = json['PreencheuClasse'];
    isInativo = json['IsInativo'];
    ignorarDuplicidade = json['IgnorarDuplicidade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Codigo'] = this.codigo;
    data['Razao_Social'] = this.razaoSocial;
    data['Fantasia'] = this.fantasia;
    data['Inativo'] = this.inativo;
    data['Cnpj'] = this.cnpj;
    data['Ie'] = this.ie;
    data['Endereco'] = this.endereco;
    data['Bairro'] = this.bairro;
    data['Cidade'] = this.cidade;
    if (this.cidadeEntity != null) {
      data['CidadeEntity'] = this.cidadeEntity.toJson();
    }
    data['Cep'] = this.cep;
    data['Fone'] = this.fone;
    data['Fax'] = this.fax;
    data['Logotipo'] = this.logotipo;
    data['Iss'] = this.iss;
    data['Pis'] = this.pis;
    data['Cofins'] = this.cofins;
    data['Ir'] = this.ir;
    data['Csl'] = this.csl;
    data['Simples'] = this.simples;
    data['Dia_Iss'] = this.diaIss;
    data['Dia_Pis'] = this.diaPis;
    data['Dia_Cofins'] = this.diaCofins;
    data['Dia_Ir'] = this.diaIr;
    data['Dia_Csl'] = this.diaCsl;
    data['Dia_Simples'] = this.diaSimples;
    data['Reg_Trib'] = this.regTrib;
    data['Forma_Apuracao_Lucro_Real'] = this.formaApuracaoLucroReal;
    data['Funrural_Aliquota'] = this.funruralAliquota;
    data['Funrural_Mensagem'] = this.funruralMensagem;
    data['Reg_Trib_iMendes'] = this.regTribIMendes;
    data['Cod_Atividade'] = this.codAtividade;
    data['Jucesp'] = this.jucesp;
    data['Data_Jucesp'] = this.dataJucesp;
    data['Licencas'] = this.licencas;
    data['Data_Venda'] = this.dataVenda;
    data['Contrato'] = this.contrato;
    data['Email_Fiscal'] = this.emailFiscal;
    data['Data_Cadastro_Ecf'] = this.dataCadastroEcf;
    data['Cro_Cadastro_Ecf'] = this.croCadastroEcf;
    data['Numero'] = this.numero;
    data['Contato'] = this.contato;
    data['Inscricao_Cadastro_Contribuinte'] =
        this.inscricaoCadastroContribuinte;
    data['Inscricao_Municipal'] = this.inscricaoMunicipal;
    data['Padrao'] = this.padrao;
    data['Icms_Nf'] = this.icmsNf;
    data['Multiloja_Ip'] = this.multilojaIp;
    data['Multiloja_Banco'] = this.multilojaBanco;
    data['Multiloja_Senha'] = this.multilojaSenha;
    data['Nome_Contabilista'] = this.nomeContabilista;
    data['Cpf_Contabilista'] = this.cpfContabilista;
    data['Crc_Contabilista'] = this.crcContabilista;
    data['Cnpj_Escritorio_Contabilista'] = this.cnpjEscritorioContabilista;
    data['Cep_Contabilista'] = this.cepContabilista;
    data['Endereco_Contabilista'] = this.enderecoContabilista;
    data['Numero_Endereco_Contabilista'] = this.numeroEnderecoContabilista;
    data['Complemento_Endereco_Contabilista'] =
        this.complementoEnderecoContabilista;
    data['Bairro_Contabilista'] = this.bairroContabilista;
    data['Fone_Contabilista'] = this.foneContabilista;
    data['Fax_Contabilista'] = this.faxContabilista;
    data['Email_Contabilista'] = this.emailContabilista;
    data['Cidade_Contabilista'] = this.cidadeContabilista;
    data['Numero_Suframa'] = this.numeroSuframa;
    data['Tipo_Atividade'] = this.tipoAtividade;
    data['Fk_Empresa_Fiscal_Serie_Nf'] = this.fkEmpresaFiscalSerieNf;
    data['Tipo_Empresa'] = this.tipoEmpresa;
    data['Codigo_Folhamatic'] = this.codigoFolhamatic;
    data['Codigo_Cliente'] = this.codigoCliente;
    data['Slogan'] = this.slogan;
    data['Decreto_Padrao'] = this.decretoPadrao;
    data['Caminho_Multiloja_Xml'] = this.caminhoMultilojaXml;
    data['N_Ordem'] = this.nOrdem;
    data['Data_Junta'] = this.dataJunta;
    data['Empresa_Contador'] = this.empresaContador;
    data['Registro_Junta'] = this.registroJunta;
    data['Ramo_Atividade'] = this.ramoAtividade;
    data['Desconto_Issqn'] = this.descontoIssqn;
    data['Regime_Incidencia'] = this.regimeIncidencia;
    data['Retencao_Iss'] = this.retencaoIss;
    data['Iss_Maior_Que'] = this.issMaiorQue;
    data['Nfe_Msg_Logotipo'] = this.nfeMsgLogotipo;
    data['Apuracao_Pis_Cofins'] = this.apuracaoPisCofins;
    data['Sped_Pis_Cofins_Utilizar'] = this.spedPisCofinsUtilizar;
    data['Timeout_Conexao'] = this.timeoutConexao;
    data['Login_Nfp'] = this.loginNfp;
    data['Senha_Nfp'] = this.senhaNfp;
    data['Tipo_Nfp'] = this.tipoNfp;
    data['Licenca_Sanitaria'] = this.licencaSanitaria;
    data['Complemento'] = this.complemento;
    data['Covisa_Conferido_Estoque'] = this.covisaConferidoEstoque;
    data['Tipo'] = this.tipo;
    data['Qtde_Maquinas'] = this.qtdeMaquinas;
    data['Codigo_Fornecedor'] = this.codigoFornecedor;
    data['Site_Empresa'] = this.siteEmpresa;
    data['Codigointernoedi'] = this.codigointernoedi;
    data['Data_Fechamento_Atual'] = this.dataFechamentoAtual;
    data['Cpf_Transmissor_Sngpc'] = this.cpfTransmissorSngpc;
    data['Data_Carga'] = this.dataCarga;
    data['Franquia_Perfil_Cadastro'] = this.franquiaPerfilCadastro;
    data['Criterio_Apuracao_Pis_Cofins'] = this.criterioApuracaoPisCofins;
    data['Exibir_CockPit'] = this.exibirCockPit;
    data['Empresa_Matriz'] = this.empresaMatriz;
    data['Usuario_AT'] = this.usuarioAT;
    data['Senha_At'] = this.senhaAt;
    data['Capital_Social'] = this.capitalSocial;
    data['Pais'] = this.pais;
    data['Dados_Procon'] = this.dadosProcon;
    data['UrlFoto'] = this.urlFoto;
    if (this.iEOutrosEstados != null) {
      data['IE_OutrosEstados'] =
          this.iEOutrosEstados.map((v) => v).toList();
    }
    data['IntegracaoSuperOn'] = this.integracaoSuperOn;
    data['Lista_Preco_APP'] = this.listaPrecoAPP;
    data['Petz_Sigla'] = this.petzSigla;
    data['Email_Contato'] = this.emailContato;
    data['Possui_IVA'] = this.possuiIVA;
    data['Porte'] = this.porte;
    data['Numero_Empresa'] = this.numeroEmpresa;
    data['Reg_Especial_Trib'] = this.regEspecialTrib;
    data['Incentivador_Cultural'] = this.incentivadorCultural;
    data['Classificacao_Estabelecimento'] = this.classificacaoEstabelecimento;
    data['PreencheuClasse'] = this.preencheuClasse;
    data['IsInativo'] = this.isInativo;
    data['IgnorarDuplicidade'] = this.ignorarDuplicidade;
    return data;
  }
}

class CidadeEntity {
  int codigo;
  String cidade;
  String estado;
  String dDD;
  int codigoCidadeIBGE;
  int codigoUFIBGE;
  int codigoPais;
  Pais pais;
  String nomePais;
  int regiao;
  int codigoSIAFI;
  String cidadeEstado;
  String descricaoEstado;
  bool preencheuClasse;
  bool isInativo;
  bool ignorarDuplicidade;

  CidadeEntity(
      {this.codigo,
      this.cidade,
      this.estado,
      this.dDD,
      this.codigoCidadeIBGE,
      this.codigoUFIBGE,
      this.codigoPais,
      this.pais,
      this.nomePais,
      this.regiao,
      this.codigoSIAFI,
      this.cidadeEstado,
      this.descricaoEstado,
      this.preencheuClasse,
      this.isInativo,
      this.ignorarDuplicidade});

  CidadeEntity.fromJson(Map<String, dynamic> json) {
    codigo = json['Codigo'];
    cidade = json['Cidade'];
    estado = json['Estado'];
    dDD = json['DDD'];
    codigoCidadeIBGE = json['Codigo_Cidade_IBGE'];
    codigoUFIBGE = json['Codigo_UF_IBGE'];
    codigoPais = json['Codigo_Pais'];
    pais = json['Pais'] != null ? new Pais.fromJson(json['Pais']) : null;
    nomePais = json['Nome_Pais'];
    regiao = json['Regiao'];
    codigoSIAFI = json['Codigo_SIAFI'];
    cidadeEstado = json['CidadeEstado'];
    descricaoEstado = json['DescricaoEstado'];
    preencheuClasse = json['PreencheuClasse'];
    isInativo = json['IsInativo'];
    ignorarDuplicidade = json['IgnorarDuplicidade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Codigo'] = this.codigo;
    data['Cidade'] = this.cidade;
    data['Estado'] = this.estado;
    data['DDD'] = this.dDD;
    data['Codigo_Cidade_IBGE'] = this.codigoCidadeIBGE;
    data['Codigo_UF_IBGE'] = this.codigoUFIBGE;
    data['Codigo_Pais'] = this.codigoPais;
    if (this.pais != null) {
      data['Pais'] = this.pais.toJson();
    }
    data['Nome_Pais'] = this.nomePais;
    data['Regiao'] = this.regiao;
    data['Codigo_SIAFI'] = this.codigoSIAFI;
    data['CidadeEstado'] = this.cidadeEstado;
    data['DescricaoEstado'] = this.descricaoEstado;
    data['PreencheuClasse'] = this.preencheuClasse;
    data['IsInativo'] = this.isInativo;
    data['IgnorarDuplicidade'] = this.ignorarDuplicidade;
    return data;
  }
}

class Pais {
  int codigo;
  String descricao;
  String codEsocial;
  bool padrao;
  int codigoPais;
  bool preencheuClasse;
  bool isInativo;
  bool ignorarDuplicidade;

  Pais(
      {this.codigo,
      this.descricao,
      this.codEsocial,
      this.padrao,
      this.codigoPais,
      this.preencheuClasse,
      this.isInativo,
      this.ignorarDuplicidade});

  Pais.fromJson(Map<String, dynamic> json) {
    codigo = json['Codigo'];
    descricao = json['Descricao'];
    codEsocial = json['Cod_Esocial'];
    padrao = json['Padrao'];
    codigoPais = json['Codigo_Pais'];
    preencheuClasse = json['PreencheuClasse'];
    isInativo = json['IsInativo'];
    ignorarDuplicidade = json['IgnorarDuplicidade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Codigo'] = this.codigo;
    data['Descricao'] = this.descricao;
    data['Cod_Esocial'] = this.codEsocial;
    data['Padrao'] = this.padrao;
    data['Codigo_Pais'] = this.codigoPais;
    data['PreencheuClasse'] = this.preencheuClasse;
    data['IsInativo'] = this.isInativo;
    data['IgnorarDuplicidade'] = this.ignorarDuplicidade;
    return data;
  }
}

class Empresas {
  int codigo;
  String razaoSocial;
  String fantasia;
  bool padrao;

  Empresas({this.codigo, this.razaoSocial, this.fantasia, this.padrao});

  Empresas.fromJson(Map<String, dynamic> json) {
    codigo = json['Codigo'];
    razaoSocial = json['Razao_Social'];
    fantasia = json['Fantasia'];
    padrao = json['Padrao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Codigo'] = this.codigo;
    data['Razao_Social'] = this.razaoSocial;
    data['Fantasia'] = this.fantasia;
    data['Padrao'] = this.padrao;
    return data;
  }
}

class Menus {
  String uRL;
  String titulo;
  bool isContadorSpecified;
  bool abrirNovaAbaSpecified;
  List<MenusFilhos> menusFilhos;
  bool isContador;

  Menus(
      {this.uRL,
      this.titulo,
      this.isContadorSpecified,
      this.abrirNovaAbaSpecified,
      this.menusFilhos,
      this.isContador});

  Menus.fromJson(Map<String, dynamic> json) {
    uRL = json['URL'];
    titulo = json['Titulo'];
    isContadorSpecified = json['IsContadorSpecified'];
    abrirNovaAbaSpecified = json['AbrirNovaAbaSpecified'];
    if (json['MenusFilhos'] != null) {
      menusFilhos = new List<MenusFilhos>();
      json['MenusFilhos'].forEach((v) {
        menusFilhos.add(new MenusFilhos.fromJson(v));
      });
    }
    isContador = json['IsContador'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['URL'] = this.uRL;
    data['Titulo'] = this.titulo;
    data['IsContadorSpecified'] = this.isContadorSpecified;
    data['AbrirNovaAbaSpecified'] = this.abrirNovaAbaSpecified;
    if (this.menusFilhos != null) {
      data['MenusFilhos'] = this.menusFilhos.map((v) => v.toJson()).toList();
    }
    data['IsContador'] = this.isContador;
    return data;
  }
}

class MenusFilhos {
  String uRL;
  String titulo;
  bool isContadorSpecified;
  bool abrirNovaAbaSpecified;
  List<MenusFilhos> menusFilhos;

  MenusFilhos(
      {this.uRL,
      this.titulo,
      this.isContadorSpecified,
      this.abrirNovaAbaSpecified,
      this.menusFilhos});

  MenusFilhos.fromJson(Map<String, dynamic> json) {
    uRL = json['URL'];
    titulo = json['Titulo'];
    isContadorSpecified = json['IsContadorSpecified'];
    abrirNovaAbaSpecified = json['AbrirNovaAbaSpecified'];
    if (json['MenusFilhos'] != null) {
      menusFilhos = new List<MenusFilhos>();
      json['MenusFilhos'].forEach((v) {
        menusFilhos.add(new MenusFilhos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['URL'] = this.uRL;
    data['Titulo'] = this.titulo;
    data['IsContadorSpecified'] = this.isContadorSpecified;
    data['AbrirNovaAbaSpecified'] = this.abrirNovaAbaSpecified;
    if (this.menusFilhos != null) {
      data['MenusFilhos'] = this.menusFilhos.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Banco {
  String nomeBanco;
  Null senha;
  String servidor;
  String usuario;
  bool isCriptografado;

  Banco(
      {this.nomeBanco,
      this.senha,
      this.servidor,
      this.usuario,
      this.isCriptografado});

  Banco.fromJson(Map<String, dynamic> json) {
    nomeBanco = json['NomeBanco'];
    senha = json['Senha'];
    servidor = json['Servidor'];
    usuario = json['Usuario'];
    isCriptografado = json['IsCriptografado'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NomeBanco'] = this.nomeBanco;
    data['Senha'] = this.senha;
    data['Servidor'] = this.servidor;
    data['Usuario'] = this.usuario;
    data['IsCriptografado'] = this.isCriptografado;
    return data;
  }
}
