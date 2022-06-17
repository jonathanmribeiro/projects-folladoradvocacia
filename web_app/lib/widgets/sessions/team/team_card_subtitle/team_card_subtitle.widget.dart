import 'package:flutter/material.dart';

import '../../../../themes/colors.theme.dart';

TextStyle teamCardSubtitleStyle = TextStyle(
  color: secondaryColorMap[400],
  fontSize: 15,
  fontFamily: "Quattrocento",
);

class TeamCardSubtitleWidget extends StatelessWidget {
  const TeamCardSubtitleWidget({
    Key? key,
    required this.subtitle,
  }) : super(key: key);

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: teamCardSubtitleStyle,
      textAlign: TextAlign.center,
    );
  }
}
