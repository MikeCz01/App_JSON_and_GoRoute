import 'dart:convert' as convert;
import 'package:flutter/services.dart';
import 'package:app_json_and_go_route/domain/usuarios.dart';

//Estructura de la clase
class _UsuariosReadFile{
  //READ
  Future<List<Usuarios>> getUsuarios() async {
    final dataAssetBundle = await rootBundle.loadString('database/usuario.json');
    List<dynamic> usuariosListJson = convert.jsonDecode(dataAssetBundle);
    return usuariosListJson.map((e) => Usuarios.fromJson(e)).toList();
  }
}

final usuariosReadFile = _UsuariosReadFile();