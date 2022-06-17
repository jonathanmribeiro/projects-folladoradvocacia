import 'package:flutter/material.dart';

class PublicationsBackgroundWidget extends StatelessWidget {
  const PublicationsBackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyPolygon(),
      child: Container(
        color: Theme.of(context).colorScheme.onBackground,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}

class MyPolygon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(size.width / 4, size.height),
      Offset(size.width / 1.5, 0),
      Offset(size.width, 0),
      Offset(size.width, size.height)
    ], true);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
