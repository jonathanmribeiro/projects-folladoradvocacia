import 'package:flutter/material.dart';

class ContactMapWidget extends StatelessWidget {
  const ContactMapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      padding: const EdgeInsets.all(50),
      width: MediaQuery.of(context).size.width / 2,
    );
  }
}
