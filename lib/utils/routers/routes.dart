import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swiftcafe/utils/routers/routes_constants.dart';
import 'package:swiftcafe/views/screens/auththentication/login.dart';
import 'package:swiftcafe/views/screens/beverage/beverage.dart';
import 'package:swiftcafe/views/screens/dashboard/dashboard.dart';
import '../../models/dashboard/beverage_model.dart';

class Routes{
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        name: RouteNames.home,
        path: '/',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return const MaterialPage(child: LoginPage());
        },
      ),
      GoRoute(
        name: RouteNames.dashboard,
        path: '/dashboard',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return const MaterialPage(child: Dashboard());
        },
      ),
      GoRoute(
        name: RouteNames.beverages,
        path: '/dashboard/beverage',
        pageBuilder: (BuildContext context, GoRouterState state) {
          final beverageModel = state.pathParameters['beverageModel'] as BeverageModel;
          return MaterialPage(child: MyBeverage(beverageModel: beverageModel));
        },
      ),
    ],
  );
}