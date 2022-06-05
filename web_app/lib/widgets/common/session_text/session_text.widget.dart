import 'package:flutter/material.dart';

class SessionTextWidget extends StatelessWidget {
  const SessionTextWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
