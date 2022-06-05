import 'package:flutter/material.dart';

import 'service_image_description.widget.dart';

class ServiceImageWidget extends StatelessWidget {
  const ServiceImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 472,
      width: 190,
      color: Colors.pink,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/random_image.jfif",
            fit: BoxFit.cover,
          ),
          const Positioned(
            bottom: -1,
            left: 10,
            right: 10,
            child: Center(
              child: ServiceImageDescriptionWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
