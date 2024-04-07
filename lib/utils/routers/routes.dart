import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routes{
  GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        name: 'login',
        path: '/',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return const MaterialPage(child: Placeholder());
        },
      ),
      GoRoute(
        name: 'dashboard',
        path: '/dashboard',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return const MaterialPage(child: Placeholder());
        },
      ),
    ],
  );
}