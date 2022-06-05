import 'package:flutter/material.dart';

class SliderNavigatorWidget extends StatelessWidget {
  const SliderNavigatorWidget(
      {Key? key, required this.current, required this.totalItems})
      : super(key: key);

  final int current;
  final int totalItems;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List<Widget>.generate(
        totalItems,
        (index) {
          return Container(
            margin: const EdgeInsets.all(3),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: current == index
                  ? Theme.of(context).colorScheme.onSecondary
                  : Theme.of(context).colorScheme.secondary,
              shape: BoxShape.circle,
            ),
          );
        },
      ),
    );
  }
}

                // border: Border.all(
                //     color: const Color(0xFF000000),
                //     width: 1,
                //     style: BorderStyle.solid),
                // borderRadius: const BorderRadius.all(
                //   Radius.circular(10),
                // ),