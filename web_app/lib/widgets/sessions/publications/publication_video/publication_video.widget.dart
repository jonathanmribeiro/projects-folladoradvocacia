import 'package:flutter/material.dart';

class PublicationVideoWidget extends StatelessWidget {
  const PublicationVideoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      height: 347,
      width: 235,
      child: const Text("Publication video"),
    );
  }
}
