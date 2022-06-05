import 'package:flutter/material.dart';

class ServiceImageDescriptionWidget extends StatelessWidget {
  const ServiceImageDescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      color: Colors.amber,
      child: const Text("Descrição da área de atuação"),
    );
  }
}
