import 'package:appmoura/models/usuario.model.dart';
import 'package:appmoura/services/api.services.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class UsuariosPage extends StatefulWidget {
  @override
  _UsuariosPageState createState() => _UsuariosPageState();
}

class _UsuariosPageState extends State<UsuariosPage> {
  final apiService = BlocProvider.getDependency<ApiService>();
  List<UsuarioModel> usuarios;

  @override
  void initState() {
    super.initState();
    usuarios = [];
    getData();
  }

  getData() async {
    usuarios = await apiService.postUsuarios();
    setState(() {
      usuarios = usuarios;
    });
    print(usuarios.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Usuários"),
        ),
        body: ListView.builder(
            itemCount: usuarios.length,
            itemBuilder: (BuildContext context, int index) {
              var usuario = usuarios[index];
              return Card(
                child: ListTile(
                  leading: Image.network(
                    'https://previews.123rf.com/images/triken/triken1608/triken160800029/61320775-male-avatar-profile-picture-default-user-avatar-guest-avatar-simply-human-head-vector-illustration-i.jpg',
                    fit: BoxFit.cover,
                  ),
                  trailing: Text(usuario.codigo.toString()),
                  title: Text(usuario.nome),
                  subtitle: Text(usuario.abreviacao),
                ),
              );
            }));
  }
}
