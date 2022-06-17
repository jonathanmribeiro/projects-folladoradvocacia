import 'package:flutter/material.dart';

class TeamCardImageWidget extends StatelessWidget {
  const TeamCardImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -15),
      child: const CircleAvatar(
        radius: 50,
        child: Text("T"),
      ),
    );
  }
}
