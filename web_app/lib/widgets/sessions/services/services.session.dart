import 'package:flutter/material.dart';
import 'package:web_app/widgets/sessions/services/service_image/service_image.widget.dart';

import '../../common/session_text/session_text.widget.dart';
import '../../common/session_title/session_title.widget.dart';

class ServicesSession extends StatelessWidget {
  const ServicesSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 696,
      alignment: Alignment.center,
      color: Theme.of(context).colorScheme.background,
      margin: const EdgeInsets.all(50),
      child: ListView(
        shrinkWrap: true,
        children: [
          const Center(
            child: SessionTitleWidget(text: "ÁREAS DE ATUAÇÃO"),
          ),
          Container(
            margin: const EdgeInsets.all(50),
            child: SessionTextWidget(
              text:
                  "texto das áreas de atuação texto das áreas de atuação texto "
                  "das áreas de atuação texto das áreas de atuação texto das "
                  "áreas de atuação texto das áreas de atuação texto das áreas "
                  "de atuação texto das áreas de atuação ",
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              ServiceImageWidget(description: "ÁREA DE ATUAÇÃO 1"),
              ServiceImageWidget(description: "ÁREA DE ATUAÇÃO 2"),
              ServiceImageWidget(description: "ÁREA DE ATUAÇÃO 3"),
              ServiceImageWidget(description: "ÁREA DE ATUAÇÃO 4"),
              ServiceImageWidget(description: "ÁREA DE ATUAÇÃO 5"),
            ],
          )
        ],
      ),
    );
  }
}
