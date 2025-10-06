import 'package:flutter/material.dart';
import 'package:shoes_website/screens/widgets/large_screen_widgets/herosection_image.dart';
import 'package:shoes_website/screens/widgets/large_screen_widgets/social_section.dart';
import 'package:shoes_website/screens/widgets/mobile_screen_widgets/top_social_section.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 950) {
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
        } else if (constraints.maxWidth > 600) {
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
        } else {
          return Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 20),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopSocialSection(size: size),
                  HerosectionImage(size: size),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
