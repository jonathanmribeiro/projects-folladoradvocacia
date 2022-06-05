import 'package:flutter/material.dart';
import 'package:web_app/widgets/common/session_text/session_text.widget.dart';
import 'package:web_app/widgets/common/session_title/session_title.widget.dart';

class ContactTextWidget extends StatelessWidget {
  const ContactTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        SessionTitleWidget(text: "Contato"),
        SessionTextWidget(
          text:
              "Nossos horários de atendimento são das 13:30 às 18:00 de segunda a sexta.",
          textAlign: TextAlign.left,
        ),
        SessionTextWidget(
          text:
              "Plantão criminal para casos de prisão em flagrante pelo whats (42) 9 9801-5894",
          textAlign: TextAlign.left,
        ),
        SessionTextWidget(
          text: "Rua Francisco Ferreira, 106, 84073-305, Ponta Grossa - PR",
          textAlign: TextAlign.left,
        ),
        SessionTextWidget(
          text: "42 9 9999-9999",
          textAlign: TextAlign.left,
        ),
        SessionTextWidget(
          text: "contato@folladoradvocacia.com.br",
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
