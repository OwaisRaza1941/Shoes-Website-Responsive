import 'package:flutter/material.dart';
import 'package:shoes_website/screens/large_screen.dart/desktop_home_page.dart';
import 'package:shoes_website/screens/mobile_screen.dart/mobile_home_page.dart';
import 'package:shoes_website/screens/tablet_screen.dart/tablet_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 950) {
          return DesktopHomePage();
        } else if (constraints.maxWidth > 600) {
          return TabletHomePage();
        } else {
          return MobileHomePage();
        }
      },
    );
  }
}
