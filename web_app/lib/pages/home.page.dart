import 'package:flutter/material.dart';
import 'package:web_app/widgets/appbar/appbar.widget.dart';
import 'package:web_app/widgets/sessions/contact/contact.session.dart';
import 'package:web_app/widgets/sessions/publications/publications.session.dart';
import 'package:web_app/widgets/sessions/services/services.session.dart';
import 'package:web_app/widgets/sessions/slider/slider.session.dart';
import 'package:web_app/widgets/sessions/team/team.session.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: OverflowBox(
        child: ListView(
          children: const [
            ContactSession(),
            SliderSession(),
            ServicesSession(),
            TeamSession(),
            PublicationsSession(),
          ],
        ),
      ),
    );
  }
}
