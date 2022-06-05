import 'package:flutter/material.dart';
import 'package:web_app/widgets/common/session_text/session_text.widget.dart';
import 'package:web_app/widgets/common/session_title/session_title.widget.dart';

class TeamDescriptionWidget extends StatelessWidget {
  const TeamDescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SessionTitleWidget(text: "NOSSA EQUIPE"),
        SessionTextWidget(text: "TEXTO DESCRITIVO DA EQUIPE"),
      ],
    );
  }
}
