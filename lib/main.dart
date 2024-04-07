import 'package:flutter/material.dart';
import 'package:swiftcafe/utils/constants/theme.dart';
import 'package:swiftcafe/utils/routers/routes.dart';

void main(){
  return runApp(MaterialApp.router(
    theme: themeData,
    routerDelegate: Routes().router.routerDelegate,
    routeInformationParser: Routes().router.routeInformationParser,
    routeInformationProvider: Routes().router.routeInformationProvider,
  ));
}