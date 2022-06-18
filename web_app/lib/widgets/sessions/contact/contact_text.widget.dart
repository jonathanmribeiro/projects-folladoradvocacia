import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:web_app/widgets/common/session_text/session_text.widget.dart';
import 'package:web_app/widgets/common/session_title/session_title.widget.dart';

class ContactTextWidget extends StatelessWidget {
  const ContactTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      color: Theme.of(context).colorScheme.background,
      padding: const EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SessionTitleWidget(text: "Contato"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SessionTextWidget(
                text:
                    "Nossos horários de atendimento são das 13:30 às 18:00 de segunda a sexta.",
                textAlign: TextAlign.left,
                fontSize: 20,
              ),
              const SizedBox(height: 30),
              SessionTextWidget(
                text:
                    "Plantão criminal para casos de prisão em flagrante pelo whats (42) 9 9801-5894",
                textAlign: TextAlign.left,
                fontSize: 20,
                leadingButton: IconButton(
                  icon: const Icon(Icons.whatsapp),
                  onPressed: whatsAppIconPressed,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ),
              const SizedBox(height: 30),
              SessionTextWidget(
                text:
                    "Rua Francisco Ferreira, 106, 84073-305, Ponta Grossa - PR",
                textAlign: TextAlign.left,
                fontSize: 20,
                prefixIcon: const Icon(Icons.location_on),
              ),
              SessionTextWidget(
                text: "(42) 999867-4323",
                textAlign: TextAlign.left,
                fontSize: 20,
                prefixButton: IconButton(
                  icon: const Icon(Icons.phone),
                  onPressed: phoneIconPressed,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ),
              SessionTextWidget(
                text: "contato@folladoradvocacia.com.br",
                textAlign: TextAlign.left,
                fontSize: 20,
                prefixButton: IconButton(
                  icon: const Icon(Icons.email),
                  onPressed: emailIconPressed,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ),
              SessionTextWidget(
                text: "/folladoradvocacia",
                textAlign: TextAlign.left,
                fontSize: 20,
                prefixButton: IconButton(
                  icon: const Icon(Icons.facebook),
                  onPressed: facebookIconPressed,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ),
              SessionTextWidget(
                text: "@folladoradvocacia",
                textAlign: TextAlign.left,
                fontSize: 20,
                prefixButton: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.instagram),
                  onPressed: instagramIconPressed,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  facebookIconPressed() async {
    await launchUrlString("https://www.facebook.com/folladoradvocacia");
  }

  instagramIconPressed() async {
    await launchUrlString("https://www.instagram.com/folladoradvocacia");
  }

  phoneIconPressed() async {
    await launchUrlString("tel://9998674323");
  }

  whatsAppIconPressed() async {
    await launchUrlString("https://api.whatsapp.com/send?phone=5542998674323");
  }

  emailIconPressed() async {
    Uri params = Uri(
        scheme: 'mailto',
        path: 'contato@folladoradvocacia.com.br',
        queryParameters: {
          'subject': 'Contato',
          'body': 'Olá, solicito contato fone '
        });

    await launchUrl(params);
  }
}
