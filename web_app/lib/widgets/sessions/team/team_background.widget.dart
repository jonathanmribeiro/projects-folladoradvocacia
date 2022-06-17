import 'package:flutter/material.dart';

class TeamSessionBackgroundWidget extends StatelessWidget {
  const TeamSessionBackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Image.asset(
        "assets/images/equipe.png",
        width: MediaQuery.of(context).size.width / 2.5,
        fit: BoxFit.cover,
      ),
    );
  }
}
