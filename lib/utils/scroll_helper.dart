import 'package:flutter/material.dart';

class ScrollHelper {
  static void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration:  Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }
}
