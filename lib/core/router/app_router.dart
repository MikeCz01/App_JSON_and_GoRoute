import 'package:app_json_and_go_route/presentation/pages/home/home_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (context, GoRouterState state) {
          return const Principal();
        }),
  ],
);
