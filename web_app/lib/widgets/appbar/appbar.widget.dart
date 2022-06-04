import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSize {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
