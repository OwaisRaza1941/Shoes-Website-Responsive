import 'package:flutter/material.dart';
import 'package:shoes_website/screens/large_screen.dart/collection_page.dart';
import 'package:shoes_website/screens/widgets/large_screen_widgets.dart/bottom_slide.dart';
import 'package:shoes_website/screens/widgets/large_screen_widgets.dart/hero_section.dart';
import 'package:shoes_website/screens/widgets/navbar.dart';
import 'package:shoes_website/constants/styles.dart';

class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: Styles.gradeintDecoration,
      child: SingleChildScrollView(
        child: Column(
          children: [Navbar(), HeroSection(), BottomSlide(), CollectionPage()],
        ),
      ),
    );
  }
}
