import 'package:flutter/material.dart';

import '../../../themes/colors.theme.dart';

TextStyle sessionTextStyle = TextStyle(
  color: primaryColorMap[600],
  fontSize: 14,
  fontFamily: "Open Sans",
);

class SessionTextWidget extends StatelessWidget {
  const SessionTextWidget({
    Key? key,
    required this.text,
    required this.textAlign,
  }) : super(key: key);

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
