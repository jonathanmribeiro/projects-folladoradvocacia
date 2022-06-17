import 'package:flutter/material.dart';

class TeamSessionBackgroundWidget extends StatelessWidget {
  const TeamSessionBackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(right: 100),
      child: Image.asset(
        "assets/images/equipe.png",
      ),
    );
  }
}
