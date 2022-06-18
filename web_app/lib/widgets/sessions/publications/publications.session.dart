import 'package:flutter/material.dart';

import '../../common/session_text/session_text.widget.dart';
import '../../common/session_title/session_title.widget.dart';
import 'publication_video/publication_video.widget.dart';
import 'publications_background.widget.dart';

class PublicationsSession extends StatelessWidget {
  const PublicationsSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const PublicationsBackgroundWidget(),
          Container(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SessionTitleWidget(text: "Publicações"),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: SessionTextWidget(
                    text:
                        "descrição descrição descrição descrição descrição descrição descrição descrição descrição "
                        "descrição descrição descrição descrição descrição descrição descrição descrição descrição "
                        "descrição descrição descrição descrição descrição descrição descrição descrição descrição ",
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 75),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    PublicationVideoWidget(),
                    PublicationVideoWidget(),
                    PublicationVideoWidget(),
                    PublicationVideoWidget(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
