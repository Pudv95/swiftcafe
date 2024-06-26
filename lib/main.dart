import 'package:flutter/material.dart';
import 'package:swiftcafe/utils/constants/theme.dart';
import 'package:swiftcafe/utils/routers/routes.dart';

void main(){
  return runApp(MaterialApp.router(
    theme: themeData,
    routerConfig: Routes.router,
  ));
}