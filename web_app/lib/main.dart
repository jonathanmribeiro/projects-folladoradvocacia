import 'dart:ui';

import 'package:flutter/material.dart';
import 'pages/home.page.dart';
import 'themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Follador Advocacia',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const HomePage(),
      scrollBehavior: AppScrollBehavior(),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
