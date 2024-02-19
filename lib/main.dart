import 'package:flutter/material.dart';
import 'package:app_json_and_go_route/core/router/app_router.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Usuarios',
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true));
  }
}
