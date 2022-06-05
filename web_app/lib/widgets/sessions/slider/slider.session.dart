import 'package:flutter/material.dart';

import 'slider_navigator/slider_navigator.widget.dart';

class SliderSession extends StatefulWidget {
  const SliderSession({Key? key}) : super(key: key);

  @override
  State<SliderSession> createState() => _SliderSessionState();
}

class _SliderSessionState extends State<SliderSession> {
  late PageController _pageController;

  late List<String> images = [
    "assets/images/cartao.jpg",
    "assets/images/por_do_sol.jpeg",
  ];

  int activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: activePage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 472,
      color: Colors.yellow,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: images.length,
            pageSnapping: true,
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                activePage = page;
              });
            },
            itemBuilder: (context, pagePosition) {
              return SizedBox(
                child: Image.asset(
                  images[pagePosition],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          Positioned(
            bottom: 25,
            right: 100,
            child: Center(
              child: SliderNavigatorWidget(
                totalItems: images.length,
                current: activePage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
