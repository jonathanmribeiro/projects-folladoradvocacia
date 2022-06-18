import 'package:flutter/material.dart';

import 'contact_map.widget.dart';
import 'contact_text.widget.dart';

class ContactSession extends StatelessWidget {
  const ContactSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 686,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          ContactMapWidget(),
          ContactTextWidget(),
        ],
      ),
    );
  }
}
