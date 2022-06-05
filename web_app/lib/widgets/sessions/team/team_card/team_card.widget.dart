import 'package:flutter/material.dart';

class TeamCardWidget extends StatelessWidget {
  const TeamCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      height: 234,
      width: 297,
      child: const Text("Team card"),
    );
  }
}
