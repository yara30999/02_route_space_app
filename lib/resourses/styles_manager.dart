import 'package:flutter/material.dart';
import 'colors_manager.dart';

class FontConstants {
  static const String fontInter = "Inter";
}

abstract class Styles {
  static TextStyle style48Bold() {
    return const TextStyle(
      fontFamily: FontConstants.fontInter,
      fontSize: 48,
      fontWeight: FontWeight.w700,
      color: ColorsManager.white,
    );
  }

  static TextStyle style24Bold() {
    return const TextStyle(
      fontFamily: FontConstants.fontInter,
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: ColorsManager.white,
    );
  }

  static TextStyle style20Bold() {
    return const TextStyle(
      fontFamily: FontConstants.fontInter,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: ColorsManager.white,
    );
  }

  static TextStyle style16Regular() {
    return const TextStyle(
      fontFamily: FontConstants.fontInter,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: ColorsManager.white,
    );
  }
}
