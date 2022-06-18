import 'package:flutter/material.dart';

import 'google_map/google_map.widget.dart';

class ContactMapWidget extends StatelessWidget {
  const ContactMapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      padding: const EdgeInsets.all(50),
      width: MediaQuery.of(context).size.width / 2,
      child: GoogleMapWidget(),
    );
  }
}
