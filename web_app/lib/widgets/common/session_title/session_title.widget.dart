import 'package:flutter/material.dart';

import '../../../themes/colors.theme.dart';

TextStyle sessionTitleStyle = TextStyle(
  color: secondaryColorMap[200],
  fontSize: 24,
  fontFamily: "Dosis",
);

class SessionTitleWidget extends StatelessWidget {
  const SessionTitleWidget({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(text, style: sessionTitleStyle),
          Container(
            height: 1,
            width: 250,
            color: sessionTitleStyle.color,
          ),
        ],
      ),
    );
  }
}
