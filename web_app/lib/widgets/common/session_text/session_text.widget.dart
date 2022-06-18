import 'package:flutter/material.dart';

import '../../../themes/colors.theme.dart';

TextStyle sessionTextStyle = const TextStyle();

class SessionTextWidget extends StatelessWidget {
  SessionTextWidget({
    Key? key,
    double fontSize = 14,
    required this.text,
    required this.textAlign,
  }) : super(key: key) {
    sessionTextStyle = TextStyle(
      color: primaryColorMap[600],
      fontSize: fontSize,
      fontFamily: "Open Sans",
    );
  }

  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: sessionTextStyle,
      textAlign: textAlign,
    );
  }
}
