import 'package:flutter/material.dart';

import '../../../themes/colors.theme.dart';

TextStyle actionButtonTextStyle = TextStyle(
  color: secondaryColorMap[200],
  fontSize: 20,
  fontFamily: "Dosis",
);

class AppBarAction extends StatelessWidget {
  const AppBarAction({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50),
      alignment: Alignment.center,
      child: TextButton(
        onPressed: onPressed,
        child: Text(text, style: actionButtonTextStyle),
      ),
    );
  }
}
