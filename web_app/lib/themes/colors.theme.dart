import 'package:flutter/material.dart';

Map<int, Color> primaryColorMap = {
  100: const Color(0xFFF0F0F0),
  200: const Color(0xFFC0C0C0),
  300: const Color(0xFFA0A0A0),
  400: const Color(0xFF707070),
  500: const Color(0xFF404040),
  600: const Color(0xFF101010),
};

Map<int, Color> secondaryColorMap = {
  100: const Color(0xFFF3E6D7),
  200: const Color(0xFFC3B9AD),
  300: const Color(0xFFA79A8B),
  400: const Color(0xFF8A7C6D),
  500: const Color(0xFF685D50),
  600: const Color(0xFF2E2720),
};

Map<int, Color> accentColorMap = {
  100: const Color(0xFFD00000),
  200: const Color(0xFFB00000),
  300: const Color(0xFF900000),
  400: const Color(0xFF800000),
  500: const Color(0xFF700000),
  600: const Color(0xFF500000),
};

MaterialColor primaryColors = MaterialColor(0xbbb0b0b0, primaryColorMap);
MaterialColor secondaryColors = MaterialColor(0xbbb0b0b0, secondaryColorMap);
MaterialColor accentColors = MaterialColor(0xbbb0b0b0, accentColorMap);

var colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: primaryColors.shade500,
  onPrimary: primaryColors.shade200,
  secondary: secondaryColors.shade600,
  onSecondary: secondaryColors.shade200,
  error: accentColors.shade100,
  onError: secondaryColors.shade100,
  background: primaryColors.shade100,
  onBackground: primaryColors.shade300,
  surface: primaryColors.shade100,
  onSurface: primaryColors.shade600,
  tertiary: accentColors.shade400,
);
