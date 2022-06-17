import 'package:flutter/material.dart';

import 'service_image_description.widget.dart';

class ServiceImageWidget extends StatelessWidget {
  const ServiceImageWidget({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

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
          Positioned(
            bottom: 0,
            left: 10,
            right: 10,
            child: Transform.translate(
              offset: const Offset(0, 20),
              child: ServiceImageDescriptionWidget(
                description: description,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
