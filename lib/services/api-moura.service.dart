import 'package:appmoura/models/itens-venda.model.dart';
import 'package:appmoura/models/usuario-login.model.dart';
import 'package:appmoura/models/usuario.model.dart';
import 'package:dio/dio.dart';

class ApiMouraService {
  
  Future<UsuarioLoginModel> logar(String usuario, String senha) async {
    try {
      Map<String, dynamic> body = {'usuario': usuario, 'senha': senha};

      Dio _api = new Dio();
      Response response = await _api.post(
        'https://e2abb9ce.ngrok.io/Moura/api/Login/Login',
        data: body
      );
      if (response.statusCode == 200) {
        return UsuarioLoginModel.fromJson(response.data);
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<ItensVendaModel> gravaItensVenda(ItensVendaModel model) async {
    try {
      Dio _api = new Dio();
      Response response = await _api.post(
        'https://1e5274fa.ngrok.io/api/PdvMobile/GravarVendaEsperaMobile',
        data: model.toJson()
      );
      if (response.statusCode == 200) {
        return ItensVendaModel();//.fromJson(response.data);
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
