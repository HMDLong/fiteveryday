import 'package:fiteveryday/routing.dart';
import 'package:fiteveryday/common/utils/string.dart';
import 'package:fiteveryday/common/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: StringRes.appTitle,
      theme: mainTheme,
      routerConfig: goRouter,
    );
  }
}
