import 'package:flutter/material.dart';

import '../../../../themes/colors.theme.dart';

TextStyle teamCardTitleStyle = TextStyle(
  color: primaryColorMap[600],
  fontSize: 14,
  fontFamily: "Open Sans",
);

class TeamCardDescriptionWidget extends StatelessWidget {
  const TeamCardDescriptionWidget({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Text(
        description,
        style: teamCardTitleStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
