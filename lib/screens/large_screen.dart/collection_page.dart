import 'package:flutter/material.dart';
import 'package:shoes_website/constants/menus.dart/app_keys.dart';
import 'package:shoes_website/screens/widgets/hero_banner.dart';
import 'package:shoes_website/screens/widgets/large_screen_widgets.dart/collection_page_card.dart';
import 'package:shoes_website/screens/widgets/large_screen_widgets.dart/collectionpage_text.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      key: AppKeys.collectionKey,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top: 100, left: 40, right: 40, bottom: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CollectionpageText(size: size),
                CollectionPageCard(),
              ],
            ),
            SizedBox(height: 100),
            HeroBanner(),
          ],
        ),
      ),
    );
  }
}
