import 'package:flutter/material.dart';
import 'package:shoes_website/screens/widgets/large_screen_widgets.dart/herosection_image.dart';
import 'package:shoes_website/screens/widgets/large_screen_widgets.dart/social_section.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SocialSection(size: size),
            HerosectionImage(size: size),
          ],
        ),
      ),
    );
  }
}
