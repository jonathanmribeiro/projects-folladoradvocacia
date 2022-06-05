import 'package:flutter/material.dart';
import 'package:web_app/widgets/sessions/publications/publication_video/publication_video.widget.dart';

import 'publications_background.widget.dart';

class PublicationsSession extends StatelessWidget {
  const PublicationsSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      height: 696,
      child: Stack(
        children: [
          const PublicationsBackgroundWidget(),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                PublicationVideoWidget(),
                PublicationVideoWidget(),
                PublicationVideoWidget(),
                PublicationVideoWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
