import 'package:flutter/material.dart';

import 'appbar_action/appbar_action.widget.dart';
import 'appbar_leading/appbar_leading.widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSize {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: const AppBarLeadingWidget(),
      actions: const [
        AppBarAction(),
        AppBarAction(),
        AppBarAction(),
        AppBarAction(),
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
