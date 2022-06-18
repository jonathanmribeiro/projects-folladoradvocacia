import 'package:flutter/material.dart';

import '../../../themes/colors.theme.dart';

TextStyle sessionTextStyle = const TextStyle();

class SessionTextWidget extends StatelessWidget {
  final Icon? prefixIcon;
  final IconButton? prefixButton;
  final IconButton? leadingButton;

  SessionTextWidget({
    Key? key,
    double fontSize = 14,
    this.prefixIcon,
    this.prefixButton,
    this.leadingButton,
    required this.text,
    required this.textAlign,
  }) : super(key: key) {
    sessionTextStyle = TextStyle(
      color: primaryColorMap[600],
      fontSize: fontSize,
      fontFamily: "Open Sans",
    );
  }

  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        children: [
          if (prefixIcon != null) getPrefixIcon(),
          if (prefixButton != null) getPrefixButton(),
          TextSpan(text: text, style: sessionTextStyle),
          if (leadingButton != null) getLeadingButton(),
        ],
      ),
    );
  }

  getPrefixIcon() {
    return WidgetSpan(
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: prefixIcon!,
      ),
    );
  }

  getPrefixButton() {
    return WidgetSpan(
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: prefixButton!,
      ),
    );
  }

  getLeadingButton() {
    return WidgetSpan(
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: leadingButton!,
      ),
    );
  }
}
