import 'package:flutter/material.dart';

import '../../../../themes/colors.theme.dart';

TextStyle teamCardTitleStyle = TextStyle(
  color: primaryColorMap[600],
  fontSize: 16,
  fontFamily: "Quattrocento",
);

class TeamCardTitleWidget extends StatelessWidget {
  const TeamCardTitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: teamCardTitleStyle),
        Container(
          height: 1,
          margin: const EdgeInsets.only(left: 20, right: 20),
          color: teamCardTitleStyle.color,
        ),
      ],
    );
  }
}
