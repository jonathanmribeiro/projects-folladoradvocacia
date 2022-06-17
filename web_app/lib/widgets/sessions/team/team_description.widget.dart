import 'package:flutter/material.dart';
import 'package:web_app/widgets/common/session_text/session_text.widget.dart';
import 'package:web_app/widgets/common/session_title/session_title.widget.dart';

class TeamDescriptionWidget extends StatelessWidget {
  const TeamDescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 350,
      padding: const EdgeInsets.only(left: 75, right: 75),
      child: Transform.translate(
        offset: const Offset(0, -70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            SessionTitleWidget(text: "NOSSA EQUIPE"),
            SessionTextWidget(
              text:
                  "TEXTO DESCRITIVO DA EQUIPE TEXTO DESCRITIVO DA EQUIPE TEXTO DESCRITIVO DA "
                  "EQUIPE TEXTO DESCRITIVO DA EQUIPE TEXTO DESCRITIVO DA EQUIPE TEXTO DESCRITIVO DA EQUIPE",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
