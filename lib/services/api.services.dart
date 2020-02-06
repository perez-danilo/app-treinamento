import 'package:appmoura/models/usuario.model.dart';
import 'package:dio/dio.dart';

class ApiService {
  
  Future<List<UsuarioModel>> postUsuarios() async {
    try {
      Dio _api = new Dio();
      Response response = await _api.post(
        'https://mourasite1.jnmoura.com.br/PET_APRESENTACAO/api/PdvMobile/GetUsuariosMobile',
      );
      if (response.statusCode == 200) {
        var model = (response.data as List)
            .map((item) => UsuarioModel.fromJson(item))
            .toList();
        return model;
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
