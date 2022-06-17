import 'package:flutter/material.dart';

import 'team_background.widget.dart';
import 'team_card/team_card.widget.dart';
import 'team_description.widget.dart';

class TeamSession extends StatelessWidget {
  const TeamSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 696,
      color: Theme.of(context).colorScheme.background,
      margin: const EdgeInsets.all(50),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const TeamSessionBackgroundWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  TeamCardWidget(),
                  TeamDescriptionWidget(),
                  SizedBox(
                    width: 300,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  TeamCardWidget(),
                  TeamCardWidget(),
                  TeamCardWidget(),
                  TeamCardWidget(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
