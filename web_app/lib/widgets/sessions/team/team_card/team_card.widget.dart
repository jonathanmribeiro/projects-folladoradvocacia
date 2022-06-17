import 'package:flutter/material.dart';

import '../team_card_description/team_card_description.widget.dart';
import '../team_card_image/team_card_image.widget.dart';
import '../team_card_subtitle/team_card_subtitle.widget.dart';
import '../team_card_title/team_card_title.widget.dart';

class TeamCardWidget extends StatelessWidget {
  const TeamCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      height: 234,
      width: 297,
      child: ListView(
        children: const [
          TeamCardImageWidget(),
          TeamCardTitleWidget(title: "Nome do integrante do time"),
          TeamCardSubtitleWidget(subtitle: "Nome do cargo"),
          TeamCardDescriptionWidget(
            description:
                "descrição descrição descrição descrição descrição descrição descrição descrição descrição descrição descrição ",
          ),
        ],
      ),
    );
  }
}
