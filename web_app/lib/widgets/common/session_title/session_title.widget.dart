import 'package:flutter/material.dart';

class SessionTitleWidget extends StatelessWidget {
  const SessionTitleWidget({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
