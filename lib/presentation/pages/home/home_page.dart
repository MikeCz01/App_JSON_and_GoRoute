import 'package:flutter/material.dart';
import 'package:app_json_and_go_route/presentation/pages/home/widgets/lista_usuarios.dart';

class Principal  extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Usuarios"),
      ),
      body: Center(
        child: listausuarios(),
    )
    );
    }
}