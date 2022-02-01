import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:online_shop_app/app_module.dart';
import 'package:online_shop_app/app_widget.dart';

void main() {
  runApp(
    ModularApp(
      
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
