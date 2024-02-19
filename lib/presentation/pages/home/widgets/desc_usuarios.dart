import 'package:flutter/material.dart';

List<Widget> listaUsuarios(List<dynamic>? data, BuildContext context) {
  List<Widget> listaUsuarios = [];

  data?.forEach((element) { 
      final location=element.location.toString().split('.').last.toUpperCase();
    listaUsuarios.add(
      ListTile(
        leading: Image.network(element.picture.width),
        title: Text(element.name),
        subtitle: Text(location),
        onTap: () {
          print('Tapped');
          //Navegacion a una pantalle del equipo .....  equipo/:id
        },
      )
    );
  });
  return listaUsuarios;
}