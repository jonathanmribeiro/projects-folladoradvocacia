import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:web_app/widgets/appbar/appbar.widget.dart';
import 'package:web_app/widgets/sessions/contact/contact.session.dart';
import 'package:web_app/widgets/sessions/publications/publications.session.dart';
import 'package:web_app/widgets/sessions/services/services.session.dart';
import 'package:web_app/widgets/sessions/slider/slider.session.dart';
import 'package:web_app/widgets/sessions/team/team.session.dart';

late AnchorScrollController _scrollController = AnchorScrollController();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

  @protected
  @mustCallSuper
  void initState() {
    _scrollController =
        AnchorScrollController(onIndexChanged: (index, userScroll) {});
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: OverflowBox(
        // child: ListView.builder(
        //   controller: _scrollController,
        //   itemCount: 5,
        //   itemBuilder: (context, index) => AnchorItemWrapper(
        //     index: index,
        //     controller: _scrollController,
        //     child: ServicesSession(),
        //   ),
        // ),
        child: ListView(
          controller: _scrollController,
          children: const [
            SliderSession(),
            ServicesSession(),
            TeamSession(),
            PublicationsSession(),
            ContactSession(),
          ],
        ),
      ),
    );
  }
}
