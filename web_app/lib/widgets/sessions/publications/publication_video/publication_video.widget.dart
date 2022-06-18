import 'package:flutter/material.dart';

class PublicationVideoWidget extends StatelessWidget {
  const PublicationVideoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 347,
      width: 235,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Theme.of(context).colorScheme.onBackground.withAlpha(75),
          )
        ],
      ),
      child: const Text("Publication video"),
    );
  }
}
