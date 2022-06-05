import 'package:flutter/material.dart';

import '../../../../themes/colors.theme.dart';

TextStyle descriptionTitleStyle = TextStyle(
  color: secondaryColorMap[400],
  fontSize: 20,
  fontFamily: "Quattrocento",
);

class ServiceImageDescriptionWidget extends StatelessWidget {
  const ServiceImageDescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      color: Theme.of(context).colorScheme.background,
      child: Text(
        "Descrição da área de atuação",
        style: descriptionTitleStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
