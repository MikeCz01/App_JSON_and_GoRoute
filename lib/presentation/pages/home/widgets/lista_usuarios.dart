import 'package:flutter/material.dart';
import 'package:app_json_and_go_route/core/utils/usuario_read_file.dart';
import 'package:app_json_and_go_route/presentation/pages/home/widgets/desc_usuarios.dart';

Widget listausuarios() {
  return FutureBuilder(
      future: usuariosReadFile.getUsuarios(),
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: listaUsuarios(snapshot.data, context),
          );
        } else {
          return const CircularProgressIndicator();
        }
      });
}
