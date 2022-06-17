import 'package:flutter/material.dart';

import '../../../../themes/colors.theme.dart';

TextStyle descriptionTitleStyle = TextStyle(
  color: secondaryColorMap[400],
  fontSize: 20,
  fontFamily: "Quattrocento",
);

class ServiceImageDescriptionWidget extends StatelessWidget {
  const ServiceImageDescriptionWidget({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 100,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Theme.of(context).colorScheme.onBackground.withAlpha(75),
          )
        ],
      ),
      child: Text(
        description,
        style: descriptionTitleStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
