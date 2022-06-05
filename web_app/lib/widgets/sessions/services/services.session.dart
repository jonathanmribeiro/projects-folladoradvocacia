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
      child: ListView(
        shrinkWrap: true,
        children: [
          const Center(
            child: SessionTitleWidget(text: "ÁREAS DE ATUAÇÃO"),
          ),
          const Center(
            child: SessionTextWidget(text: "texto das áreas de identificação"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              ServiceImageWidget(),
              ServiceImageWidget(),
              ServiceImageWidget(),
              ServiceImageWidget(),
              ServiceImageWidget(),
            ],
          )
        ],
      ),
    );
  }
}
