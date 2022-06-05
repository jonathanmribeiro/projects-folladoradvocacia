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
        children: const [
          Center(
            child: Text("ÁREA DE ATUAÇÃO"),
          ),
          Positioned(
            bottom: 0,
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
